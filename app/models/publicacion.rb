class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :ciudad, :descripcion, :direccion, :distrito, :edad, :fecha, :lat, :lng, :nombre, :portada, :provincia, :raza, :recompensa, :referencia, :sexo, :tipo

  extend FriendlyId

  has_many :imagenes
  has_one :plan
  has_one :provincia
  has_one :ciudad
  has_one :distrito

  def titulo
    "#{nombre} #{animal} #{raza} #{tipo} en #{distrito}"
  end

  friendly_id :titulo, use: :slugged
  
  mount_uploader :portada, PortadaUploader
end
