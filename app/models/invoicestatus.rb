class Invoicestatus < ApplicationRecord
  has_many :invoices

  validates :invoicestatus, presence: true, length: { maximum: 128 }
end
