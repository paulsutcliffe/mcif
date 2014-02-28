class SitemapController < ApplicationController
  def index
    @miembros = Miembro.all
    @asociados = Asociado.all
    @servicios = Servicio.all
    @noticias_mcif = Noticia.noticia.clase('mcif')
    @noticias_recomendadas = Noticia.noticia.clase('recomendada')
    @publicaciones_mcif = Noticia.publicacion.clase('mcif')
    @publicaciones_recomendadas = Noticia.publicacion.clase('recomendada')
  end
end
