class CreateCiudades < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.string :nombre
      t.integer :provincia_id
      t.string :slug

      t.timestamps
    end
  end
end
