Mcif::Application.routes.draw do

  scope '(:locale)', :locale => /#{I18n.available_locales.join("|")}/ do

    resources :asociados

    devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

    match "/noticias/resultado-de-busqueda" => "noticias#resultado_de_busqueda", via: :get, as: 'resultado_de_busqueda'

    resources :noticias

    match 'noticias-mcif' => 'noticias#noticias', :subcategoria => 'Mcif', :as => :noticias_mcif, via: :get
    match 'noticias-recomendadas' => 'noticias#noticias', :subcategoria => 'Recomendada', :as => :noticias_recomendadas, via: :get
    match 'publicaciones-mcif' => 'noticias#publicaciones', :subcategoria => 'Mcif', :as => :publicaciones_mcif, via: :get
    match 'publicaciones-recomendadas' => 'noticias#publicaciones', :subcategoria => 'Recomendada', :as => :publicaciones_recomendadas, via: :get

    resources :postulantes

    resources :contactos

    resources :proyectos

    scope '/nosotros' do
      resources :miembros
    end

    resources :clientes

    resources :servicios

    resources :slides

    root to: 'inicio#index'

  end

end
