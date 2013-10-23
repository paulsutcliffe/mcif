class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :imagen
      t.string :link

      t.timestamps
    end
  end
end
