class TranslateNoticias < ActiveRecord::Migration
  def self.up
    Noticia.create_translation_table!({
      :titulo => :string,
      :subtitulo => :string,
      :contenido => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Noticia.drop_translation_table! :migrate_data => true
  end
end
