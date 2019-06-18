Rails.application.routes.draw do
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'coins/index'
  # get 'coins/show'
  # get 'coins/new'
  # get 'pressings/index'
  # get 'pressings/show'
  # get 'pressings/new'
  # get 'pressings/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pressings
  get 'home', to: 'static_pages#home', as: :home
  get 'directory', to: 'static_pages#directory', as: :directory
  resources :coins


  resources :users
  # get '/users', to: "users#index"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "sessions#login", as: "login"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  post '/users/:id', to: 'users#click', as: "click"
end
