class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :contenido
      t.string :link
      t.string :tipo
      t.date :fecha
      t.string :categoria
      t.string :subcategoria
      t.boolean :destacado
      t.string :slug

      t.timestamps
    end
  end
end
