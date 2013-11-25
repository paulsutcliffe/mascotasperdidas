class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.integer :dias
      t.float :precio
      t.text :descripcion
      t.integer :publicacion_id

      t.timestamps
    end
  end
end