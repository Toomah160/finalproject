Rails.application.routes.draw do
  
  resources :ideas
  resources :platforms
  resources :roles
  resources :users
  
  root to: 'ideas#index'
  
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  

end
