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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'dashboard/index'
  root 'dashboard#index'
  get 'users/index', to: 'users#index'
  get 'register', to: redirect('register/sign_up')
  get 'orderauctions', to: redirect('order_auctions')

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }

  namespace :charts do
    get 'invoices_by_month'
    get 'orders_by_month'
    get 'shipments_by_month'
    get 'total_payments'
  end

end
