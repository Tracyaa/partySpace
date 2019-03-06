Rails.application.routes.draw do
  resources :venues
  resources :users
  resources :bookings
  resources :favorites
end
