class CreateTransacciones < ActiveRecord::Migration
  def change
    create_table :transacciones do |t|
      t.integer :publicacion_id
      t.integer :usuario_id
      t.datetime :fecha

    end
  end
end
