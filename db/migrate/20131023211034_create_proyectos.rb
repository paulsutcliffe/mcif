class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :logo
      t.string :foto
      t.text :contenido

      t.timestamps
    end
  end
end
