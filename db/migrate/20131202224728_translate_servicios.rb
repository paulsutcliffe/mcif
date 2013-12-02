class TranslateServicios < ActiveRecord::Migration
  def self.up
    Servicio.create_translation_table!({
      
      :nombre => :string,
      :contenido => :text 

    }, {
      :migrate_date => true
    })
  end

  def self.down
    Servicio.drop_translation_table! :migrate_data => true
  end
end
