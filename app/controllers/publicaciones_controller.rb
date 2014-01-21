#Coding: utf-8
class PublicacionesController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :resultado_de_busqueda, :show, :sin_resultados]
  before_filter :setup_usuario
  def new
    @publicacion = Publicacion.new
  end

  def setup_usuario
    @usuario = Usuario.find(current_usuario.id) if current_usuario
  end

  def index
    case params[:tipo]
    when 'Perdido'
      @titulo = 'Todas las mascotas perdidas'
    when 'Encontrado'
      @titulo = 'Todas las mascotas encontradas'
    else
      @titulo = 'Todas las mascotas'
    end

    @publicaciones = params[:tipo] ? Publicacion.where("tipo = ?", params[:tipo]).page(params[:page]) : Publicacion.page(params[:page])
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
    if params[:busqueda].empty?
      @publicaciones = Publicacion.where("tipo = ?", params[:tipo])
      if @publicaciones.class == Array
        @publicaciones = Kaminari.paginate_array(@publicaciones).page(params[:page]).per(5)
      else
        @publicaciones = @publicaciones.page(params[:page]).per(5)
      end
    else
      @publicaciones = Publicacion.where("tipo = ?", params[:tipo]).buscar(params[:busqueda])
      if @publicaciones.empty?
        redirect_to action: 'sin_resultados', :busqueda => params[:busqueda]
      else
        if @publicaciones.class == Array
          @publicaciones = Kaminari.paginate_array(@publicaciones).page(params[:page]).per(5)
        else
          @publicaciones = @publicaciones.page(params[:page]).per(5)
        end
      end
    end
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

  def update
    update!(notice: "La publicación se ha editado con éxito")
  end

  def destroy
    destroy!(notice: "La publicación se ha eliminado con éxito") { mis_publicaciones_path }
  end

  def sin_resultados
    @busqueda = params[:busqueda]
  end

end
