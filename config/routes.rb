Rails.application.routes.draw do

  root to: 'visitors#index'

  resources :groups, only: [:index, :show, :create, :destroy, :update]
  patch "group_join", to: "groups#join", as: "join_group"
  delete "group_leave", to: "groups#leave", as: "leave_group"

  devise_for :users
  resources :users

  get '/events', to: 'events#index'
  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'
  patch '/events/join', to: 'events#join'


  get 'emailtest' => 'users#testemail', as: 'emailtest'

end
