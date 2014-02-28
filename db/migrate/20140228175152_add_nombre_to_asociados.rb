class AddNombreToAsociados < ActiveRecord::Migration
  def change
    add_column :asociados, :nombre, :string
    add_column :asociados, :slug, :string
    add_column :asociados, :slug_en, :string
    add_column :asociados, :slug_es, :string
  end
end
