class Imagen < ActiveRecord::Base
  attr_accessible :imagen, :publicacion_id
  belongs_to :publicacion

  mount_uploader :imagen, ImagenUploader
  
end
