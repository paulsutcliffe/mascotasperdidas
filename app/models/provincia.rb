class Provincia < ActiveRecord::Base
  attr_accessible :nombre

  extend FriendlyId

  belongs_to :usuario
  belongs_to :publicacion
  has_many :ciudades

  friendly_id :nombre, use: :slugged
end
