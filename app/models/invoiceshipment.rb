class Invoiceshipment < ApplicationRecord
  belongs_to :shipment
  belongs_to :invoice

  validates :shipment_id, presence: true
  validates :invoice_id, presence: true

end
