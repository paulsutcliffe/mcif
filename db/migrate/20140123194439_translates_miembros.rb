class TranslatesMiembros < ActiveRecord::Migration
  def self.up
    Miembro.create_translation_table!({
      :contenido => :text,
      :puesto => :string,
      :profesion => :string,
      :resumen => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Miembro.drop_translation_table! :migrate_data => true
  end
end
