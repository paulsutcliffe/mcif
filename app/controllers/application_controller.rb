#coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_i18n_locale_from_params

  before_filter :cargar_drops_del_menu
  before_filter :cargar_ticker_noticias

  def cargar_drops_del_menu
    @menu_servicios = Servicio.all
  end

  def cargar_ticker_noticias
    @ticker_noticias = Noticia.where("destacado = ?", true).limit(6)
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

  protected

    def set_i18n_locale_from_params
      if (params[:locale] ||= :pt)
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = "#{params[:locale]} traducción no disponible"
        logger.error flash.now[:notice]
      end
      end
    end

    def default_url_options
      { :locale => I18n.locale }
    end


end


