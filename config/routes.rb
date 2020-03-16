Rails.application.routes.draw do
  resources :customertypes
  resources :customerstatuses
  resources :countries
  resources :customers
  resources :hellos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
