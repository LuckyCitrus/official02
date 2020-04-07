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
  resources :users
  resources :auction_orders

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'dashboard#index'
  get 'users/index', to: 'users#index'
  #get 'auction_orders/index', to: 'auction_orders#index'
  get 'reports/auction_orders', to: 'reports#auction_orders'
  get 'reports/active_orders', to: 'reports#active_orders'
  get 'register', to: redirect('register/sign_up')
  get 'orderauctions', to: redirect('order_auctions')

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up'}

end
