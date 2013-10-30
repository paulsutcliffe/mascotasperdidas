class Distrito < ActiveRecord::Base
  attr_accessible :nombre

  extend FriendlyId

  belongs_to :usuario
  belongs_to :publicacion
  belongs_to :ciudad
  friendly_id :nombre, use: :slugged
end
