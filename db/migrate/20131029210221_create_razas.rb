class CreateRazas < ActiveRecord::Migration
  def change
    create_table :razas do |t|
      t.string :nombre
      t.integer :animal_id
      t.string :slug

      t.timestamps
    end
  end
end
