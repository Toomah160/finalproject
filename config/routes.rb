Rails.application.routes.draw do
  
  resources :ideas_users
  resources :ideas
  resources :platforms
  resources :roles
  resources :users
  
  root to: 'ideas#index'
   get 'ascending' => 'ideas#ascending'
   get 'descending' => 'ideas#descending'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
 # get 'ideas_users/:id'=>'ideas_users#show'
  delete 'logout' => 'sessions#destroy'
 

end