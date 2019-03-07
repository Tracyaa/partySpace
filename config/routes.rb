Rails.application.routes.draw do

  resources :venues
  resources :users
  resources :bookings
  resources :favorites

  get 'partyspace', to: 'login#partyspace', as: 'partyspace'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'login#new', as: 'login'
  # get 'logout', to: 'login#destroy', as: 'logout'
  delete 'logout', to: 'login#destroy', as: 'logout'
  # delete '/logout', to: 'login#destroy', as: :logout


  resources :login, only: [:new, :create, :destroy]


  # root "venues#index"
  root "login#partyspace"

end
