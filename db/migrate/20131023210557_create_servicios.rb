class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :icono
      t.string :nombre
      t.text :contenido

      t.timestamps
    end
  end
end
