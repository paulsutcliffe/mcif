class Punto < ActiveRecord::Base
  attr_accessible :leyenda, :x, :y

  belongs_to :chart

  accepts_nested_attributes_for :tasks
end
