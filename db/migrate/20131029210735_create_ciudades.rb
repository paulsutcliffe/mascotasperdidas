class CreateCiudades < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.string :nombre
      t.integer :usuario_id
      t.integer :publicacion_id

      t.timestamps
    end
  end
end
