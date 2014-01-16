class CreatePuntos < ActiveRecord::Migration
  def change
    create_table :puntos do |t|
      t.string :x
      t.string :y
      t.string :leyenda

      t.timestamps
    end
  end
end
