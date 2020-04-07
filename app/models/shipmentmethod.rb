class Shipmentmethod < ApplicationRecord

  #delete cascading
  has_many :shipments, dependent: :destroy

  #field validation
  validates :shipmentmethod, presence: true, length: { maximum: 128 }
end
