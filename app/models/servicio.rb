class Servicio < ActiveRecord::Base
  attr_accessible :contenido, :icono, :nombre
  mount_uploader :icono, IconoUploader

  # translates :nombre, :contenido

  def servicio_anterior
    self.class.first(:conditions => ["nombre < ?", nombre], :order => "nombre desc")
  end

  def siguiente_servicio
    self.class.first(:conditions => ["nombre > ?", nombre], :order => "nombre asc")
  end
end
