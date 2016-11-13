Rails.application.routes.draw do
  root to: 'visitors#index'
  get "groups", to: "groups#index"
  devise_for :users
  resources :users
end
