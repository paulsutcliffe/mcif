class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @servicios = Servicio.all
    @clientes = Cliente.random
    if current_admin
      @clientes= Cliente.all
    end
  end
end
