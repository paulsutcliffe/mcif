class CreateTextoDeServicios < ActiveRecord::Migration
  def change
    create_table :texto_de_servicios do |t|
      t.text :contenido
      t.string :subtitulo

      t.timestamps
    end
  end
end
