class Warehouse < ApplicationRecord

  #dependencies
  belongs_to :location

  #normalized for
  has_many :shipment

  #fields validation
  validates :warehousename, presence: true, length: { maximum: 128 }
  #validates :location_id, presence: true#, unless: :location.blank?

end
