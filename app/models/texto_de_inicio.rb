class TextoDeInicio < ActiveRecord::Base
  attr_accessible :contenido

  translates :contenido
end
