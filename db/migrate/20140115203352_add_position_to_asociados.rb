class AddPositionToAsociados < ActiveRecord::Migration
  def self.up
    add_column :asociados, :position, :integer

    Asociado.reset_column_information

    asociados = Asociado.all

    asociados.each_with_index do |b, i|
      b.position = i+1
      b.save!
    end
  end

  def self.down
    remove_column :asociados, :position
  end
end
