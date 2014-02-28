class AddPositionToSlides < ActiveRecord::Migration
  def self.up
    add_column :slides, :position, :integer

    Slide.reset_column_information

    slides = Slide.all

    slides.each_with_index do |b, i|
      b.position = i+1
      b.save!
    end
  end

  def self.down
    remove_column :slides, :position
  end
end
