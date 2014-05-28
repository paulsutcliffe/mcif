class TranslatesTextoDeInicioExtraFields < ActiveRecord::Migration
  def up
    change_table(:texto_de_inicio_translations) do |t|
      t.text :contenido2
      t.text :contenido3
    end
  end

  def down
    remove_column :texto_de_inicio_translations, :contenido2
    remove_column :texto_de_inicio_translations, :contenido3
  end
end
