Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :items
  resources :users
  resources :categories

get '/about' => 'pages#about'
get '/search' => 'pages#search'
# get '/myuploads' => 'items#user'


  # get '/users/edit' => 'users#edit', :as => :edit_user
  # resources :users, :except => [:edit]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end