class CreatePublicaciones < ActiveRecord::Migration
  def change
    create_table :publicaciones do |t|
      t.string :tipo
      t.string :animal
      t.string :raza
      t.string :nombre
      t.string :provincia
      t.string :ciudad
      t.string :distrito
      t.string :direccion
      t.text :referencia
      t.float :recompensa
      t.date :fecha
      t.text :descripcion
      t.float :lat
      t.float :lng
      t.string :portada
      t.string :edad
      t.string :sexo
      t.integer :usuario_id
      t.string :slug

      t.timestamps
    end
  end
end
