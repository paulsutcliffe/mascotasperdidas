class PublicacionesController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :resultado_de_busqueda, :show]
  before_filter :setup_usuario
  def new
    @publicacion = Publicacion.new
  end

  def setup_usuario
    @usuario = Usuario.find(current_usuario.id) if current_usuario
  end

  def index
    @publicaciones = params[:tipo] ? Publicacion.where("tipo = ?", params[:tipo]).page(params[:page]) : Publicacion.all.page(params[:page])
    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @publicaciones }
    end
  end

  def mis_publicaciones
    @publicaciones = Publicacion.where("usuario_id = ?", @usuario.id)
    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @publicaciones }
    end
  end


  def create
    @publicacion = @usuario.publicaciones.build(params[:publicacion])
    if @publicacion.save
      redirect_to new_publicacion_direccion_path(@publicacion), notice => "Se ha Creado Satisfactoriamente"
    else
      render :new
    end
  end

  def resultado_de_busqueda
    @publicaciones = Publicacion.buscar(params[:tipo], params[:raza], params[:ciudad], params[:distrito], params[:fecha]).page(params[:page])
  end
  def enviar_informacion
    @publicacion = Publicacion.find(params[:id])
    @transaccion = Transaccion.create(fecha: Time.now)
    @publicacion.transacciones << @transaccion
    @usuario.transacciones << @transaccion
    @transaccion.save
    create! do |success, failure|
      success.html do
        Notificador.notificar_a_la_persona(@publicacion, @usuario).deliver
        Notificador.notificar_al_publicante(@usuario).deliver
        render :transaccion_realizada
      end
    end
  end
  def transaccion_realizada
    
  end

end
