class InicioController < ApplicationController
  def index
    @portadas = Portada.limit(3)
    @publicaciones = Publicacion.limit(6)
    @slides = Slide.all
    @testimonio = Testimonio.random
    @video = Video.first
  end
end
