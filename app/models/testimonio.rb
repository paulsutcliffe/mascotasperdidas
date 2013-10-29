class Testimonio < ActiveRecord::Base
  attr_accessible :contenido, :foto, :nombre

  mount_uploader :foto, FotoUploader
end
