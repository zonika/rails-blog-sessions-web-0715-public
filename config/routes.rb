RailsBlog::Application.routes.draw do
  resources :users
  resources :tags

  resources :posts do
    resources :comments
  end
  get '/', to: 'users#index'
  get '/signup', to: 'users#new'
  root 'users#index'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

end
