class TranslatesTextoDeInicio < ActiveRecord::Migration
  def self.up
    TextoDeInicio.create_translation_table!({
      :contenido => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    TextoDeInicio.drop_translation_table! :migrate_data => true
  end
end
