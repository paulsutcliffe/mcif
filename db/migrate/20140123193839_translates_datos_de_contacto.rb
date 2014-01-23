class TranslatesDatosDeContacto < ActiveRecord::Migration
  def self.up
    DatosDeContacto.create_translation_table!({
      :trabaja_con_nosotros => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    DatosDeContacto.drop_translation_table! :migrate_data => true
  end
end
