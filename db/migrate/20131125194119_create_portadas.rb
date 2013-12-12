class CreatePortadas < ActiveRecord::Migration
  def change
    create_table :portadas do |t|
      t.string :imagen
      t.integer :publicacion_id
      t.timestamps
    end
  end
end
