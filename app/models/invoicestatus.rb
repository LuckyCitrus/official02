class Invoicestatus < ApplicationRecord
  has_many :invoices

  validates :invoicestatus, presence: true, length: { minimum: 2, maximum: 30 }
end
