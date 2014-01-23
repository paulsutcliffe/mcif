class TranslatesAsociados < ActiveRecord::Migration
  def self.up
    Asociado.create_translation_table!({
      :descripcion => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Asociado.drop_translation_table! :migrate_data => true
  end
end
