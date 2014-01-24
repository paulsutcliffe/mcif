class CreateTextoDeInicios < ActiveRecord::Migration
  def change
    create_table :texto_de_inicios do |t|
      t.text :contenido

      t.timestamps
    end
  end
end
