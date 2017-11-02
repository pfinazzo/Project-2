Rails.application.routes.draw do
  root 'sessions#home'
  get 'sessions/new', to: 'users#specialshow'
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  resources :users, only: [:new, :create]
  get '/profile/:id', to: 'users#show', as: 'profile'
  get '/profile/edit', to: 'users#edit'
  patch '/profile', to: 'users#update'

  resources :lessons
  patch '/lessons/:id/enroll', to: 'lessons#enroll', as: 'enroll'
  patch '/lessons/:id/unenroll', to: 'lessons#unenroll', as: 'unenroll'
  get 'users/teachers', to: 'users#teachers', as: 'teachers'
  get 'users/students', to: 'users#students', as: 'students'

  # Create a better looking URL for logging in
  

end
