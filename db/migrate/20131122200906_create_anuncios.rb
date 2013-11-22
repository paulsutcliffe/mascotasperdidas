class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.string :link
      t.string :imagen

      t.timestamps
    end
  end
end
