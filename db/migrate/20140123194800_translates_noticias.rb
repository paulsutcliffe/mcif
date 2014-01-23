class TranslatesNoticias < ActiveRecord::Migration
  def self.up
    Noticia.create_translation_table!({
      :contenido => :text,
      :subtitulo => :string,
      :comentario => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Noticia.drop_translation_table! :migrate_data => true
  end
end
