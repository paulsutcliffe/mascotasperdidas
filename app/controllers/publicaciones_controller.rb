class PublicacionesController < InheritedResources::Base
  before_filter :authenticate_usuario!, :except => [:index, :show]
  before_filter :setup_usuario
  def new
    @publicacion = Publicacion.new
  end

  def setup_usuario
     @usuario = Usuario.find(current_usuario.id)
  end

  def create
    @publicacion = @usuario.publicaciones.build(params[:publicacion])
    if @publicacion.save
      redirect_to new_publicacion_direccion_path(@publicacion), notice => "Se ha Creado Satisfactoriamente"
    else
      render :new
    end
  end
end
