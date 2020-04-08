class Shipmentmethod < ApplicationRecord

  #normalized for
  has_many :shipments

  #field validation
  validates :shipmentmethod, presence: true, length: { maximum: 128 }

end
