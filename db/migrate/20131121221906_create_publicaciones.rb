class CreatePublicaciones < ActiveRecord::Migration
  def change
    create_table :publicaciones do |t|
      t.string :tipo
      t.string :animal
      t.string :raza
      t.string :nombre
      t.float :recompensa
      t.date :fecha
      t.text :descripcion
      t.float :lat
      t.float :lng
      t.string :portada
      t.string :edad
      t.string :sexo
      t.string :slug
      t.string :status, :null => false, :default => "Pendiente"
      t.integer :usuario_id

      t.timestamps
    end
  end
end
