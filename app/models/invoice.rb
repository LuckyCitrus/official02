class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :employee

  belongs_to :invoicestatus
  has_many :invoiceshipments
  has_many :shipments, through: :invoiceshipments

  has_many :orderinvoices
  has_many :orders, through: :orderinvoices

  validates :invoicenum, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { minimum: 2, maximum: 30 }
  validates :invoicedate, presence: true
  validates :duedate, presence: true
  validates :customer_id, presence: true
  validates :employee_id, presence: true
  validates :invoicestatus_id, presence: true
  validates :amountdue, presence: true, numericality: { greater_than_or_equal_to: 0}
end
