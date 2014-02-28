class InicioController < ApplicationController
  def index
    @slides = Slide.order("position")
    @servicios = Servicio.all
    @clientes = Cliente.random
    @texto_de_inicio = TextoDeInicio.first
    if current_admin
      @clientes= Cliente.all
    end
  end

  def editar_texto_de_inicio
    @texto_de_inicio = TextoDeInicio.first
  end

  def update_texto_de_inicio
    @texto_de_inicio = TextoDeInicio.first
    @texto_de_inicio.update_attributes(params[:texto_de_inicio])
    if @texto_de_inicio.save
      redirect_to action: 'index'
    end
  end
end
