class AddDescripcionToAsociados < ActiveRecord::Migration
  def change
    add_column :asociados, :descripcion, :text
  end
end
