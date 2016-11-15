Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/events', to: 'events#index'
  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'

end
