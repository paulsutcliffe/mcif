class TextoDeInicio < ActiveRecord::Base
  attr_accessible :contenido, :contenido2, :contenido3

  translates :contenido
end
