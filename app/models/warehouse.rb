class Warehouse < ApplicationRecord

  belongs_to :location
  # belongs_to :shipment

  validates :warehousename, presence: true, length: { maximum: 128 }
  validates :location_id, presence: true, unless: :location.blank?
end
