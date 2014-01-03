class Portada < ActiveRecord::Base
  attr_accessible :imagen

  mount_uploader :imagen, PortadaUploader
end
