class AddColumnasToTextoDeInicio < ActiveRecord::Migration
  def change
    add_column :texto_de_inicios, :contenido2, :text
    add_column :texto_de_inicios, :contenido3, :text
  end
end
