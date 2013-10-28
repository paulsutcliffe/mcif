class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @servicios = Servicio.all
    @clientes = Cliente.all
  end
end
