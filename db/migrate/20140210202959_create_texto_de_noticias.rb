class CreateTextoDeNoticias < ActiveRecord::Migration
  def change
    create_table :texto_de_noticias do |t|
      t.text :contenido

      t.timestamps
    end
  end
end
