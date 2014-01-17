class Punto < ActiveRecord::Base
  attr_accessible :leyenda, :x, :y

  belongs_to :chart
end
