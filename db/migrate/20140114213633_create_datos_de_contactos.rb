class CreateDatosDeContactos < ActiveRecord::Migration
  def up
    create_table :datos_de_contactos do |t|
      t.string :telefono
      t.string :direccion
      t.text :trabaja_con_nosotros

      t.timestamps
    end
  end
  def down
    drop_table :datos_de_contactos
  end
end
