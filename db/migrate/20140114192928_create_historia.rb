#Coding: utf-8
class CreateHistoria < ActiveRecord::Migration
  def up
    create_table :historia do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :contenido

      t.timestamps
    end
  end
  def down
    drop_table :historia
  end
end
