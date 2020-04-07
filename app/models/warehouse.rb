class Warehouse < ApplicationRecord

  #dependencies
  belongs_to :location

  #associative relation
  has_many :shipment, dependent: :destroy

  #field validation
  validates :warehousename, presence: true, length: { maximum: 128 }
  #validates :location_id, presence: true#, unless: :location.blank?
end
