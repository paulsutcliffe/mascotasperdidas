class Provincia < ActiveRecord::Base
  attr_accessible :nombre

  extend FriendlyId

  has_many :ciudades

  friendly_id :nombre, use: :slugged
end
