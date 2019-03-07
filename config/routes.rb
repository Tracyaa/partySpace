Rails.application.routes.draw do
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  #
  #
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'home/index'
  # # resources :venues
  # # resources :users
  #
  # get 'signup', to: 'users#new', as: 'signup'
  # get 'login', to: 'login#new', as: 'login'
  # # get 'logout', to: 'login#destroy', as: 'logout'
  # delete 'logout', to: 'login#destroy', as: 'logout'
  # # delete '/logout', to: 'login#destroy', as: :logout
  #
  # resources :users #, only: [:index, :show, :new, :create]
  # resources :login, only: [:new, :create, :destroy]
  #
  #
  #
  # root "home#index"

end
