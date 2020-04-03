class Payment < ApplicationRecord
  belongs_to :paymentstatus
  belongs_to :paymentmethod
  belongs_to :customer
  belongs_to :invoice

  validates :paymentnum, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { maximum: 128 }
  validates :date, presence: true
  validates :customer_id, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :paymentstatus_id, presence: true
  validates :paymentmethod_id, presence: true
  validates :invoice_id, presence: true

end
