class Transaccion < ActiveRecord::Base
  attr_accessible :fecha, :publicacion_id, :usuario_id
  belongs_to :publicacion
  belongs_to :usuario
end
