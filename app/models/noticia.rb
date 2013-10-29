class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :foto, :titulo, :video
end
