RailsBlog::Application.routes.draw do

  root 'posts#index'

  get 'signup' => 'users#new', :as => 'signup'
  resources :users
  resources :tags
  resources :posts do 
    resources :comments, :only => [:new, :create, :edit, :destroy]
  end

end
