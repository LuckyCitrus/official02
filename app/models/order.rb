class Order < ApplicationRecord
  belongs_to :orderstatus
  has_many :cars
  has_many :orderinvoices
  has_many :invoices, through: :orderinvoices

  #Order Round
  has_many :pictures
  belongs_to :customer
  has_many :order_auctions
  has_many :auction, through: :order_auctions
  has_many :containerorders
  has_many :container, through: :containerorders

end
