class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]
  def index
    @noticias = Noticia.all
    @destacados = Noticia.limit(4)
  end
end
