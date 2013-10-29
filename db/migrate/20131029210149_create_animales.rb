class CreateAnimales < ActiveRecord::Migration
  def change
    create_table :animales do |t|
      t.string :nombre
      t.integer :publicacion_id

      t.timestamps
    end
  end
end
