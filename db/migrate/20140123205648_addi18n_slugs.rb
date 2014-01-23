class Addi18nSlugs < ActiveRecord::Migration
  def up
    add_index :miembros, :slug_en
    add_index :miembros, :slug_es
    add_index :noticias, :slug_en
    add_index :noticias, :slug_es
  end

  def down
  end
end
