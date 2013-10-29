class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :ciudad, :descripcion, :direccion, :distrito, :edad, :fecha, :lat, :lng, :nombre, :portada, :provincia, :raza, :recompensa, :referencia, :sexo, :tipo
  extend Friendlyid
  
  def titulo
    "#{nombre} #{animal} #{raza} #{tipo} en #{distrito}"
  end

  friendly_id :titulo, use: :slugged
end
