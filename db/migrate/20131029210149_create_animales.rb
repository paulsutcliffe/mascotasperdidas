class CreateAnimales < ActiveRecord::Migration
  def change
    create_table :animales do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
