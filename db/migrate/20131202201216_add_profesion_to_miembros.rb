class AddProfesionToMiembros < ActiveRecord::Migration
  def change
    add_column :miembros, :profesion, :string
  end
end
