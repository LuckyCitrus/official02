Rails.application.routes.draw do
  resources :employeestatuses
  resources :departments
  resources :companies
  resources :payments
  resources :paymentmethods
  resources :paymentstatuses
  resources :auctions
  resources :locations
  resources :orders
  resources :pictures
  resources :orderstatuses
  resources :customertypes
  resources :customerstatuses
  resources :countries
  resources :customers
  resources :hellos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
