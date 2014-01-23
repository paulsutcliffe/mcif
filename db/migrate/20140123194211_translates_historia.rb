class TranslatesHistoria < ActiveRecord::Migration
  def self.up
    Historia.create_translation_table!({
      :contenido => :text,
      :subtitulo => :string,
      :titulo => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Historia.drop_translation_table! :migrate_data => true
  end
end
