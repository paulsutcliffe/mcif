class Noticia < ActiveRecord::Base
  attr_accessible :categoria, :contenido, :destacado, :fecha, :link, :subtitulo, :tipo, :titulo
end
