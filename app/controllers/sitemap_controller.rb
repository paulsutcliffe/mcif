class SitemapController < ApplicationController
  def index
    @miembros = Miembro.all
    @asociados = Asociado.all
    @servicios = Servicio.all
  end
end
