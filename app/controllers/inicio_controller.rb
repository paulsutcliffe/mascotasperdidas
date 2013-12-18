class InicioController < ApplicationController
  def index
    @publicaciones = Publicacion.limit(6)
    @slides = Slide.all
    @testimonio = Testimonio.random
    @video = Video.first
  end
end
