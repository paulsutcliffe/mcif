class Chart < ActiveRecord::Base
  attr_accessible :noticia_id, :titulo, :puntos_attributes

  belongs_to :noticia

  has_many :puntos

  accepts_nested_attributes_for :puntos, :allow_destroy => true
end
