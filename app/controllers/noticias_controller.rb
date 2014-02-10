class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:resultado_de_busqueda, :index, :noticias, :publicaciones, :show]

  def noticias
    @texto_de_noticia = TextoDeNoticia.first
    @noticias = params[:tipo] ? Noticia.noticia.clase(params[:subcategoria]).where("tipo = ?", params[:tipo]) : Noticia.noticia.clase(params[:subcategoria]).where("tipo = ?", Noticia::TIPOS.first)
    @destacados = Noticia.noticia.clase(params[:subcategoria]).destacados.limit(4)

    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @noticias}
    end
  end

  def publicaciones
    @texto_de_noticia = TextoDeNoticia.first
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
    @texto_de_noticia = TextoDeNoticia.first
  end

  def resultado_de_busqueda
    @noticias = Noticia.busqueda(params[:busqueda])
  end
  def destroy
    destroy!{ root_path }
  end

  def editar_texto_de_noticia
    @texto_de_noticia = TextoDeNoticia.first
  end

  def update_texto_de_noticia
    @texto_de_noticia = TextoDeNoticia.first
    @texto_de_noticia.update_attributes(params[:texto_de_noticia])
    if @texto_de_noticia.save
      redirect_to root_path
    end
  end
end
