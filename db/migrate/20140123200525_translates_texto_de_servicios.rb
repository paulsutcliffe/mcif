class TranslatesTextoDeServicios < ActiveRecord::Migration
  def self.up
    TextoDeServicio.create_translation_table!({
      :contenido => :text,
      :subtitulo => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    TextoDeServicio.drop_translation_table! :migrate_data => true
  end
end
