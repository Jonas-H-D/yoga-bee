Rails.application.routes.draw do
  devise_for :users
  resources :locations
  resources :bookings
  resources :researchs
  root to: 'researchs#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
