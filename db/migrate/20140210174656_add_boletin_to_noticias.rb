class AddBoletinToNoticias < ActiveRecord::Migration
  def change
    add_column :noticias, :boletin, :string
  end
end
