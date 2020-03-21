Rails.application.routes.draw do
  resources :containerorders
  resources :orderinvoices
  resources :order_auctions
  resources :invoiceshipments
  resources :helloos
  resources :containers
  resources :dummyusers
  resources :dummyroles
  resources :invoices
  resources :shipments
  resources :shipmentstatuses
  resources :shipmentmethods
  resources :warehouses
  resources :invoicestatuses
  resources :cars
  resources :keystatuses
  resources :titlestatuses
  resources :employees
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
