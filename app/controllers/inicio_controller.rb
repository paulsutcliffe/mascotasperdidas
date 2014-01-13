class InicioController < ApplicationController
  def index
    @publicaciones = Publicacion.limit(6)
    @slides = Slide.all
    @testimonio = Testimonio.random
    @video = Video.order("position DESC").limit(1).first
    @portadas = Portada.limit(3)
  end
end
