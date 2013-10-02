Fanshow::Application.routes.draw do
  resources :temas

  devise_for :fans, :controllers => { :omniauth_callbacks => "fans/omniauth_callbacks" }, :path => "fans", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  devise_scope :fan do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_fan_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_fan_session
  end

  resources :fans do
    member do
      post :votar
      get :elegidas
    end
  end

  root to: 'inicio#index'

  get "inicio/index"

end
