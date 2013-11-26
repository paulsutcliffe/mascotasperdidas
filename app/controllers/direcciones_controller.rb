class DireccionesController < InheritedResources::Base
  before_filter :setup_publicacion
  def new
    @direccion = Direccion.new
  end
  
  def setup_publicacion
    @publicacion = Publicacion.find(params[:publicacion_id])
  end

  def create
    @direccion = @publicacion.build_direccion(params[:direccion])
    if @direccion.save
      redirect_to usuario_publicacion_path(@publicacion.usuario, @publicacion), :notice => "Se ha Creado Satisfactoriamente"
    else
      render :new
    end
  end
end
