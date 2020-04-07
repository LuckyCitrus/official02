class Invoicestatus < ApplicationRecord

  #delete cascading
  has_many :invoices

  #field validation
  validates :invoicestatus, presence: true, length: { maximum: 128 }

end
