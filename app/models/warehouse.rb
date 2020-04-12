class Warehouse < ApplicationRecord

  #dependencies
  belongs_to :location, optional: true

  #normalized for
  has_many :shipment

  #fields validation
  validates :warehousename, presence: true, length: { maximum: 128 }

end
