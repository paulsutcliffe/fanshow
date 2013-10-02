Fanshow::Application.routes.draw do
  resources :temas

  devise_for :fans, :controllers => { :omniauth_callbacks => "fans/omniauth_callbacks" }, :path => "fans", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :fans do
    member do
      post :votar
      get :elegidas
    end
  end

  root to: 'inicio#index'

  get "inicio/index"

end
