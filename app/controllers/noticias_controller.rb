class NoticiasController < InheritedResources::Base
  def index
    @noticias = Noticia.all
    @destacados = Noticia.limit(4)
  end
end
