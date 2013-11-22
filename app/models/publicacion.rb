class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :descripcion, :edad, :fecha, :lat, :lng, :nombre, :portada, :raza, :recompensa, :sexo, :tipo, :imagenes_attributes

  extend FriendlyId

  has_many :imagenes
  has_one :direccion
  has_one :plan
  accepts_nested_attributes_for :imagenes

  #geocoded_by :direccion
  #after_validation :geocode, :if => :direccion_changed?

  TIPOS = ['Perdido','Encontrado']
  SEXO = ['Macho','Hembra']

  def titulo
    "#{nombre} #{animal} #{raza} #{tipo}"
  end

  friendly_id :titulo, use: :slugged

  mount_uploader :portada, PortadaUploader
end
