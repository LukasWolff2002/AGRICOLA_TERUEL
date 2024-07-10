Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :images
  resources :comments

  get '/home', to: 'agricola_teruel#home' 
  get '/us', to: 'agricola_teruel#us' 

  get '/catalogo/tomate_granel', to: 'catalogo#tomate_granel' 
  get '/catalogo/tomate_racimo', to: 'catalogo#tomate_racimo' 
  get '/catalogo/tomate_beef', to: 'catalogo#tomate_beef' 
  get '/catalogo/tomate_cherry', to: 'catalogo#tomate_cherry' 
  
  root 'agricola_teruel#home'

  
end
