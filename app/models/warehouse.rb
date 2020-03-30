class Warehouse < ApplicationRecord
  belongs_to :location
  # belongs_to :shipment

  validates :warehousename, presence: true, length: { minimum: 2, maximum: 36 }
  validates :location_id, presence: true
end
