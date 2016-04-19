Rails.application.routes.draw do

  get 'sessions/new'

  resources :ideas
  resources :roles
  resources :platforms
  resources :ideas
  resources :users

  root to: 'ideas#index'
end
