class Noticia < ActiveRecord::Base
  extend Friendlyid
  attr_accessible :contenido, :foto, :titulo, :video
  friendly_id :titulo, use: :slugged

end
