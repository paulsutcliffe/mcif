class ContactosController < InheritedResources::Base
  def new
    @contacto = Contacto.new
    @postulante = Postulante.new

  end
end
