class CreateProvincias < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.string :nombre
      t.integer :publicacion_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
