class Animal < ActiveRecord::Base
  attr_accessible :nombre

  extend FriendlyId

  belongs_to :publicacion

  friendly_id :nombre, use: :slugged
end
