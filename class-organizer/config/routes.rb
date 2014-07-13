Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :destroy]
  resources :courses, only: [:new, :create, :show, :edit, :update]
  
  get 'signin', to: 'sessions#signin'
  post 'sessions/signout'
  post 'sessions/create'
end
