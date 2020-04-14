class Invoice < ApplicationRecord

  #dependencies
  belongs_to :customer
  belongs_to :employee
  belongs_to :invoicestatus
  belongs_to :shipment

  #delete cascading
  has_many :payments, dependent: :destroy
  has_many :orders, dependent: :destroy

  #field validation
  validates :invoicenum, presence: true, if: ->(invoice) {invoice.persisted?}, uniqueness: true, length: { maximum: 128 }#, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }
  validates :invoicedate, presence: true
  validates :duedate, presence: true
  validate :validate_date
  validates :customer_id, presence: true
  validates :employee_id, presence: true
  validates :invoicestatus_id, presence: true
  validates :amountdue, presence: true, numericality: { greater_than_or_equal_to: 0}

  def validate_date
    if self.invoicedate > self.duedate
      errors.add(:invoicedate, "must be before due date")
    elsif self.duedate < self.invoicedate
      errors.add(:duedate, " must be after invoice date")
    end
  end

end
