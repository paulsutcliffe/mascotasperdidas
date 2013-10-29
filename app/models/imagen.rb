class Imagen < ActiveRecord::Base
  attr_accessible :imagen

  mount_uploader :imagen, ImagenUploader
end
