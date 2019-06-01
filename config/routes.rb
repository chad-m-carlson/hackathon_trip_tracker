Rails.application.routes.draw do
  root "trips#index"
  resources :trips do
    resources :locations
  end

  resources :locations do
    resources :addresses
  end
  
  devise_for :users
end
