class CreatePostulantes < ActiveRecord::Migration
  def change
    create_table :postulantes do |t|
      t.string :nombre
      t.string :email
      t.string :curriculum

      t.timestamps
    end
  end
end
