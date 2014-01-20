class CreatePuntos < ActiveRecord::Migration
  def change
    create_table :puntos do |t|
      t.string :x
      t.string :y
      t.string :leyenda
      t.integer :noticia_id

      t.timestamps
    end
  end
end
