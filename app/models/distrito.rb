class Distrito < ActiveRecord::Base
  attr_accessible :nombre, :codigo_postal, :ciudad_id

  extend FriendlyId

  belongs_to :ciudad
  friendly_id :nombre, use: :slugged
end
