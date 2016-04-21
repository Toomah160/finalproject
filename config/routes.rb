Rails.application.routes.draw do
  
  resources :ideas_users
  resources :ideas
  resources :platforms
  resources :roles
  resources :users
  
  root to: 'ideas#index'
  
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'ascending' => 'ideas#ascending'
  

#resources :users do
 # get :make
  #:make_admin, on:memeber 
#end

end