class Direccion < ActiveRecord::Base
  attr_accessible :ciudad, :distrito, :provincia, :calle, :direccion, :usuario_id, :publicacion_id

  belongs_to :publicacion
  belongs_to :usuario
end
