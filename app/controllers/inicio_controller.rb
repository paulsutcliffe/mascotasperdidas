class InicioController < ApplicationController
  def index
    @publicaciones = Publicacion.limit(6)
    @slides = Slide.all
    @testimonio = Testimonio.first
    @video = Video.first
  end
end
