class Raza < ActiveRecord::Base
  attr_accessible :nombre, :animal_id

  extend FriendlyId

  belongs_to :animal

  friendly_id :nombre, use: :slugged
end
