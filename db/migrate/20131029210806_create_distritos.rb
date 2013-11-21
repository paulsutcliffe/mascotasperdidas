class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :nombre
      t.string :codigo_postal
      t.integer :ciudad_id
      t.string :slug

      t.timestamps
    end
  end
end
