class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :ciudad, :descripcion, :direccion, :distrito, :edad, :fecha, :lat, :lng, :portada, :provincia, :raza, :recompensa, :referencia, :sexo, :tipo
end
