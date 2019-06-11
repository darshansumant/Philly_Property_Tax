Rails.application.routes.draw do
  resources :zip_codes
  resources :parcels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'parcels#index'
end
