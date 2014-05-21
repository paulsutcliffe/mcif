Mcif::Application.routes.draw do

  get "sitemap/index"

  scope '(:locale)', :locale => /es|en/ do

    get '/asociados/move', to: 'asociados#move'

    get '/slides/move', to: 'slides#move'

    resources :asociados

    devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

    match "/noticias/resultado-de-busqueda" => "noticias#resultado_de_busqueda", via: :get, as: 'resultado_de_busqueda'

    get 'noticias/editar_texto_de_noticia'

    put 'noticias/update_texto_de_noticia'

    resources :noticias

    match 'noticias-mcif' => 'noticias#noticias', :subcategoria => 'Mcif', :as => :noticias_mcif, via: :get
    match 'noticias-recomendadas' => 'noticias#noticias', :subcategoria => 'Recomendada', :as => :noticias_recomendadas, via: :get
    match 'publicaciones-mcif' => 'noticias#publicaciones', :subcategoria => 'Mcif', :as => :publicaciones_mcif, via: :get
    match 'publicaciones-recomendadas' => 'noticias#publicaciones', :subcategoria => 'Recomendada', :as => :publicaciones_recomendadas, via: :get


    resources :postulantes

    get 'contactos/editar_datos_de_contacto'

    put 'contactos/update_datos_de_contacto'

    resources :contactos

    resources :proyectos

    scope '/nosotros' do
      get 'miembros/editar_historia'
      put 'miembros/update_historia'
      resources :miembros do
        member do
          get 'borrar_foto'
        end
      end
    end

    resources :clientes

    get 'servicios/editar_texto_de_servicio'

    put 'servicios/update_texto_de_servicio'

    resources :servicios

    resources :slides

    get 'inicio/editar_texto_de_inicio'

    put 'inicio/update_texto_de_inicio'

    root to: 'inicio#index'

  end

end
