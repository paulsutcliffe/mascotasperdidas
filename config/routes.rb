Mascotasperdidas::Application.routes.draw do

  get "inicio/index"

  get "mascotas/index"

  get "politicas/index"

  get 'tags/:tag', to: 'noticias#index', as: :tag

  get "publicaciones/enviar_informacion"

  match '/publicaciones/resultado-de-busqueda' => 'publicaciones#resultado_de_busqueda', via: :get, as: 'resultado_de_busqueda'

  match '/publicaciones/mis-publicaciones' => 'publicaciones#mis_publicaciones', via: :get, as: 'mis_publicaciones'

  match '/publicaciones/transaccion-realizada' => 'publicaciones#transaccion_realizada', via: :get, as: 'transaccion_realizada'

  resources :direcciones

  devise_for :usuarios, :controllers => { :omniauth_callbacks => "usuarios/omniauth_callbacks" }, :path => "usuarios", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :portadas

  resources :usuarios do
    resources :publicaciones
  end

  resources :publicaciones do
    resources :direcciones
  end

  resources :publicaciones


  resources :planes


  resources :anuncios


  resources :contactos


  resources :noticias


  resources :testimonios


  resources :videos


  resources :slides

  root to: 'construccion#index'

end
