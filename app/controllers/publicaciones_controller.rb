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
    @publicaciones = params[:tipo] ? Publicacion.where("tipo = ?", params[:tipo]) : Publicacion.all
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
    @publicaciones = Publicacion.buscar(params[:tipo])
  end
end
