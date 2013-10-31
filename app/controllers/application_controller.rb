class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :cargar_ticker_noticias

  def cargar_ticker_noticias
    @ticker_noticias = Noticia.limit(6)
  end
end
