class Historia < ActiveRecord::Base
  attr_accessible :contenido, :subtitulo, :titulo

  translates :contenido, :subtitulo, :titulo
end
