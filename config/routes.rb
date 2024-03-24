Rails.application.routes.draw do
  resources :secciones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  # root "articles#index"
  # get '/', to: 'home#index', as: 'root'
  namespace :authentication, path: '', as: '' do # Funciona para estructurar nuestro código como si fueran carpetas
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
    get '/login', to: 'sessions#new', as: 'login'
    get '/registrar', to: 'users#new', as: 'registrar'
  end
  get '/logout', to: 'authentication/sessions#destroy', as: 'logout'
end
