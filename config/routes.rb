Rails.application.routes.draw do

  resources :images

  resources :containerorders
  resources :orderinvoices
  resources :order_auctions
  resources :invoiceshipments
  resources :containers
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
  resources :orderstatuses
  resources :customertypes
  resources :customerstatuses
  resources :countries
  resources :customers
  resources :users
  resources :auction_orders
  resources :customer_overviews

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard/index'
  root 'dashboard#index'
  get 'users/index', to: 'users#index'
  get 'reports/active_orders', to: 'reports#active_orders'
  get 'reports/active_invoices', to: 'reports#active_invoices'
  get 'reports/auction_orders', to: 'reports#auction_orders'
  get 'customer_overviews/index', to: 'customer_overviews#index'
  #get 'reports/invoices', to: 'reports#invoices'
  get 'register', to: redirect('register/sign_up')
  get 'orderauctions', to: redirect('order_auctions')

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }

  namespace :charts do
    get 'invoices_by_month'
    get 'orders_by_month'
    get 'shipments_by_month'
    get 'total_payments'
    get 'total_auction_orders'
  end

end
