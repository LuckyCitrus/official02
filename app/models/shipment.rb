class Shipment < ApplicationRecord
  belongs_to :warehouse
  belongs_to :shipmentmethod
  belongs_to :shipmentstatus
end
