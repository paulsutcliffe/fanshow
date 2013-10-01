Fanshow::Application.routes.draw do
  resources :temas

  devise_for :fans
  resources :fans do
    member do
      post :votar
    end
  end

  root to: 'inicio#index'

  get "inicio/index"

end
