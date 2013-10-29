class CreateImagenes < ActiveRecord::Migration
  def change
    create_table :imagenes do |t|
      t.string :imagen

      t.timestamps
    end
  end
end
