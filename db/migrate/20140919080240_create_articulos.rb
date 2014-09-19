class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.string :cuerpo
      t.integer :categoria_id

      t.timestamps
    end
  end
end
