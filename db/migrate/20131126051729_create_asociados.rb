class CreateAsociados < ActiveRecord::Migration
  def change
    create_table :asociados do |t|
      t.string :imagen
      t.string :link

      t.timestamps
    end
  end
end
