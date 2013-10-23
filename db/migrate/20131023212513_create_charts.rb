class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.string :titulo
      t.integer :noticia_id

      t.timestamps
    end
  end
end
