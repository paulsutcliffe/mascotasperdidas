class Ciudad < ActiveRecord::Base
  attr_accessible :nombre

  extend FriendlyId

  belongs_to :usuario
  belongs_to :publicacion
  belongs_to :provincia
  has_many :distritos

  friendly_id :nombre, use: :slugged
end
