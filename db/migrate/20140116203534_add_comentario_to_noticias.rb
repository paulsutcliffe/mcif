class AddComentarioToNoticias < ActiveRecord::Migration
  def change
    add_column :noticias, :comentario, :text
  end
end
