Rails.application.routes.draw do

  resources :roles
  resources :platforms
  resources :ideas
  resources :users

  root to: 'ideas#index'
end
