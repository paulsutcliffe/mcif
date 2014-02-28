class AddFotoToHistoria < ActiveRecord::Migration
  def change
    add_column :historia, :foto, :string
  end
end
