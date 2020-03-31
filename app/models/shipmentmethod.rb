class Shipmentmethod < ApplicationRecord
  validates :shipmentmethod, presence: true, length: { minimum: 2, maximum: 30 }
end
