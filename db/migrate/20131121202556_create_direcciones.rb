class CreateDirecciones < ActiveRecord::Migration
  def change
    create_table :direcciones do |t|
      t.string :provincia
      t.string :ciudad
      t.string :distrito
      t.string :calle
      t.text :referencia
      t.integer :usuario_id
      t.integer :publicacion_id

      t.timestamps
    end
  end
end
