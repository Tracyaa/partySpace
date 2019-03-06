Rails.application.routes.draw do
  # resources :venues
  # resources :users

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'login#new', as: 'login'
  # get 'logout', to: 'login#destroy', as: 'logout'
  delete 'logout', to: 'login#destroy', as: 'logout'
  # delete '/logout', to: 'login#destroy', as: :logout

  resources :users #, only: [:index, :show, :new, :create]
  resources :login, only: [:new, :create, :destroy]



  root "venues#index"

end
