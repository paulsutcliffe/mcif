class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:noticias, :publicaciones, :show]

  def noticias
    @noticias = Noticia.noticia.clase(params[:subcategoria])
    @destacados = Noticia.noticia.clase(params[:subcategoria]).limit(4)
  end

  def publicaciones
    @noticias = Noticia.publicacion.clase(params[:subcategoria])
    @destacados = Noticia.publicacion.clase(params[:subcategoria]).limit(4)
  end
end
