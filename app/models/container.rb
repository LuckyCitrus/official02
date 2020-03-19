class Container < ApplicationRecord
  belongs_to :company
  has_many :orders
  belongs_to :shipment
end
