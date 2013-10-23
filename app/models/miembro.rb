class Miembro < ActiveRecord::Base
  attr_accessible :contenido, :email, :fotografia, :linkedin, :nombre, :puesto, :tipo
end
