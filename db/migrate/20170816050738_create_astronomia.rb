class CreateAstronomia < ActiveRecord::Migration
  def change
    create_table :astronomia do |t|
      t.string :Nombre
      t.string :Categoria
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
