class Invoiceshipment < ApplicationRecord

  #dependencies
  belongs_to :shipment
  belongs_to :invoice

  #field validation
  validates :shipment_id, presence: true
  validates :invoice_id, presence: true

end
