Rails.application.routes.draw do
  root 'sessions#home'
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get 'sessions/new', to: 'users#show'
  resources :users, only: [:new, :create]
  get '/profile', to: 'users#show'
  get '/profile/edit', to: 'users#edit'
  patch '/profile', to: 'users#update'

  resources :lessons
  patch '/lessons/:id/enroll', to: 'lessons#enroll', as: 'enroll'
  patch '/lessons/:id/unenroll', to: 'lessons#unenroll', as: 'unenroll'
  

  # Create a better looking URL for logging in
  

end
