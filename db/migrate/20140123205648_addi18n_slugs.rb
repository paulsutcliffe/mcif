class Addi18nSlugs < ActiveRecord::Migration
  def up
    add_column :miembros, :slug_en, :string
    add_column :miembros, :slug_es, :string
    add_column :noticias, :slug_en, :string
    add_column :noticias, :slug_es, :string
    add_index :miembros, :slug_en
    add_index :miembros, :slug_es
    add_index :noticias, :slug_en
    add_index :noticias, :slug_es
  end

  def down
  end
end
