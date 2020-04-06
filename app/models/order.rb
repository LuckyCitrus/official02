class Order < ApplicationRecord
  belongs_to :orderstatus
  has_many :orderinvoices
  has_many :invoices, through: :orderinvoices

  #Order Round
  has_many :pictures
  belongs_to :customer
  has_many :order_auctions
  has_many :auctions, through: :order_auctions
  has_many :containerorders
  has_many :containers, through: :containerorders

  # Nested Form Model
  has_many :cars, dependent: :destroy
  accepts_nested_attributes_for :cars, reject_if: :all_blank, allow_destroy: :true
  # End of Nested Form Model

  validates :ordernum, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { maximum: 128 }
  validates :date, presence: true
  validates :customer_id, presence: true
  validates :lotstock, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :total, presence: true, numericality: { greater_than_or_equal_to: :price}
  validates :orderstatus, presence: true

end
