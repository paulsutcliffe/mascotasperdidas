class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :ciudad, :descripcion, :direccion, :distrito, :edad, :fecha, :lat, :lng, :nombre, :portada, :provincia, :raza, :recompensa, :referencia, :sexo, :tipo, :imagenes_attributes

  extend FriendlyId

  has_many :imagenes
  has_one :plan
  has_one :provincia
  has_one :ciudad
  has_one :distrito
  accepts_nested_attributes_for :imagenes
  attr_accessible :direccion, :lat, :lng
  geocoded_by :direccion
  after_validation :geocode, :if => :direccion_changed?

  TIPOS = ['Perdido','Encontrado']
  SEXO = ['Macho','Hembra']

  def titulo
    "#{nombre} #{animal} #{raza} #{tipo} en #{distrito}"
  end

  friendly_id :titulo, use: :slugged
  
  mount_uploader :portada, PortadaUploader
end
