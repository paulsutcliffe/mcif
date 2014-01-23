class DatosDeContacto < ActiveRecord::Base
  attr_accessible :direccion, :telefono, :trabaja_con_nosotros

  translates :trabaja_con_nosotros
end
