class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @servicios = Servicio.all
    @clientes = Cliente.all
    @asociados = Asociado.all
  end
end
