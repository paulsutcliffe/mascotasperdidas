class Imagen < ActiveRecord::Base
  attr_accessible :imagen
  belongs_to :publicacion

  mount_uploader :imagen, ImagenUploader
  
end
