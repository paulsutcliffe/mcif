class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:resultado_de_busqueda, :index, :noticias, :publicaciones, :show]

  def noticias
    @noticias = params[:tipo] ? Noticia.noticia.clase(params[:subcategoria]).where("tipo = ?", params[:tipo]) : Noticia.noticia.clase(params[:subcategoria]).where("tipo = ?", Noticia::TIPOS.first)
    @destacados = Noticia.noticia.clase(params[:subcategoria]).destacados.limit(4)

    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @noticias}
    end
  end

  def publicaciones
    @noticias = params[:tipo] ? Noticia.publicacion.clase(params[:subcategoria]).where("tipo = ?", params[:tipo]) : Noticia.publicacion.clase(params[:subcategoria]).where("tipo = ?", Noticia::TIPOS.first)
    @destacados = Noticia.publicacion.clase(params[:subcategoria]).destacados.limit(4)

    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @noticias}
    end
  end

  def index
    @noticias = Noticia.all
    @destacados = Noticia.destacados.limit(4)
  end

  def resultado_de_busqueda
    @noticias = Noticia.busqueda(params[:busqueda])
  end
end
