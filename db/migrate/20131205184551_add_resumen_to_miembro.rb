class AddResumenToMiembro < ActiveRecord::Migration
  def change
    add_column :miembros, :resumen, :text
  end
end
