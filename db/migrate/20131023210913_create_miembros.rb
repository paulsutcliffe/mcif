class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.string :nombre
      t.string :tipo
      t.string :fotografia
      t.string :email
      t.string :linkedin
      t.text :contenido
      t.string :puesto
      t.string :slug

      t.timestamps
    end
  end
end
