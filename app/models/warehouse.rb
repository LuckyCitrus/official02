class Warehouse < ApplicationRecord
  belongs_to :location
  belongs_to :shipment
end
