class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :foto, :titulo, :video

  extend FriendlyId

  friendly_id :titulo, use: :slugged
  
  mount_uploader :foto, PortadaUploader
end
