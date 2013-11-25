class Testimonio < ActiveRecord::Base
  attr_accessible :contenido, :foto, :nombre

  mount_uploader :foto, FotoUploader

  def self.random
    self.all.sample(1).first
  end
end
