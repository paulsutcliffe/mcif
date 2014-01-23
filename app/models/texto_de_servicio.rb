class TextoDeServicio < ActiveRecord::Base
  attr_accessible :contenido, :subtitulo

  translates :contenido, :subtitulo
end
