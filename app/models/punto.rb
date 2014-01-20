class Punto < ActiveRecord::Base
  attr_accessible :leyenda, :x, :y, :noticia_id

  belongs_to :noticia
end
