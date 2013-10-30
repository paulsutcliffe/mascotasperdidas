class CreateProvincias < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.string :nombre
      t.integer :publicacion_id
      t.integer :usuario_id
      t.string :slug

      t.timestamps
    end
  end
end
