class Contacto < ActiveRecord::Base
  attr_accessible :apellido, :email, :mensaje, :nombre, :telefono
end
