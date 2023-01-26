Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :create, :new]
  resources :bookmarks do 
    resources :books
  end
  resources :books

  post '/bookmarks/add' => 'bookmarks#add'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
