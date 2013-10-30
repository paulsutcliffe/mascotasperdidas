class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :nombre
      t.integer :usuario_id
      t.integer :publicacion_id
      t.string :slug

      t.timestamps
    end
  end
end
