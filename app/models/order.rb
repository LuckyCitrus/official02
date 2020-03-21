class Order < ApplicationRecord
  belongs_to :orderstatus
  belongs_to :picture
  belongs_to :customer
  belongs_to :auction
  has_many :cars
  belongs_to :container
  has_many :orderinvoices
  has_many :invoices, through: :orderinvoices
end
