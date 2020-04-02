class Shipmentmethod < ApplicationRecord
  validates :shipmentmethod, presence: true, length: { maximum: 128 }
end
