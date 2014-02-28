class Servicio < ActiveRecord::Base
  attr_accessible :contenido, :icono, :nombre, :fotografia
  mount_uploader :icono, IconoUploader
  mount_uploader :fotografia, ImagenUploader

  translates :nombre, :contenido

  def servicio_anterior
    self.class.first(:conditions => ["nombre < ?", nombre], :order => "nombre desc")
  end

  def siguiente_servicio
    self.class.first(:conditions => ["nombre > ?", nombre], :order => "nombre asc")
  end
end
