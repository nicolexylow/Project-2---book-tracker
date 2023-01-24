Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :create, :new]
  resources :bookmarks
  resources :books

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
