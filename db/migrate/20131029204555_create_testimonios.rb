class CreateTestimonios < ActiveRecord::Migration
  def change
    create_table :testimonios do |t|
      t.string :foto
      t.text :contenido
      t.string :nombre

      t.timestamps
    end
  end
end
