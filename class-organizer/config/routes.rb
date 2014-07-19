Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :destroy]
  resources :courses, only: [:new, :create, :show, :edit, :update]
  
  get 'signin', to: 'sessions#signin'
  post 'sessions/signout'
  post 'sessions/create'
  
  get 'images/icons-sa75ce98b2b.png', to: 'courses#icons' # here we get the icons for the editor
end
