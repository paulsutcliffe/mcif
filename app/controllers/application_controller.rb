class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :cargar_ticker_noticias

  def cargar_ticker_noticias
    @ticker_noticias = Noticia.limit(6)
  end



def bodyid 
  @bodyid = params[:controller].parameterize
end

def bodyclass
  @action = params[:action].parameterize

  if params[:controller] == 'home'
    @front = 'front'
  else
    @front = 'not-front'
  end


#  if current_admin
#    @admin = 'logged-in'
#  else
#    @admin = 'not-logged-in'
#  end

  @bodyclass = @action + ' ' + @front #+ ' ' + @admin

end

helper_method :bodyid
helper_method :bodyclass



end


