class Ciudad < ActiveRecord::Base
  attr_accessible :nombre, :provincia_id

  extend FriendlyId

  belongs_to :provincia
  has_many :distritos

  friendly_id :nombre, use: :slugged
end
