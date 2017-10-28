Rails.application.routes.draw do
  root 'sessions#new'
  get '/login', to: 'sessions#new'
  get 'sessions/new', to: 'users#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index, :destroy]
  
  

  # Create a better looking URL for logging in
  

  
  
end
