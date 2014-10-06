Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :items

get '/about' => 'pages#about'


  # get '/users/edit' => 'users#edit', :as => :edit_user
  # resources :users, :except => [:edit]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end