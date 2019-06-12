Rails.application.routes.draw do
  resources :zips

  resources :parcels do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'parcels#index'
end
