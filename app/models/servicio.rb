class Servicio < ActiveRecord::Base
  attr_accessible :contenido, :icono, :nombre
  mount_uploader :icono, IconoUploadr
end
