class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  belongs_to :order
  belongs_to :payment
  belongs_to :car
  belongs_to :shipment
  belongs_to :auction
  belongs_to :invoicestatus
end
