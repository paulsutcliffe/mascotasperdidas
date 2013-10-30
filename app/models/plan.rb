class Plan < ActiveRecord::Base
  attr_accessible :descripcion, :dias, :precio

  belongs_to :publicacion

end
