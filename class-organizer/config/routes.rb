Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :destroy]
  resources :courses, only: [:new, :create, :show, :edit, :update]
  
  get 'signin', to: 'sessions#signin'
  post 'sessions/signout'
  post 'sessions/create'
  
  get 'images/icons-sa75ce98b2b.png', to: 'courses#icons' # here we get the icons for the editor
  get 'images/icons-2x-s9034954e6d.png', to: 'courses#icons2'
  
  get '/notes/:id', to: 'notes#get'
  post '/notes/:id', to: 'notes#update'
  post '/notes', to: 'notes#create'
  
  get '/', to: 'home#index'
end
