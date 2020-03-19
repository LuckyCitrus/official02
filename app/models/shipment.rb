class Shipment < ApplicationRecord
  belongs_to :warehouse
  belongs_to :shipmentmethod
  belongs_to :shipmentstatus
  has_many :warehouses
  has_many :locations, through: :warehouses
end
