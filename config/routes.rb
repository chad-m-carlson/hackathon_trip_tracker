Rails.application.routes.draw do
  root "trips#index"
  resources :addresses
  resources :locations
  resources :trips
  devise_for :users
end
