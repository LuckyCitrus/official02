class Order < ApplicationRecord
  belongs_to :orderstatus
  has_many :cars
  has_many :orderinvoices
  has_many :invoices, through: :orderinvoices

  #Order Round
  has_many :pictures
  belongs_to :customer
  has_many :order_auctions
  has_many :auction, through: :order_auctions
  has_many :containerorders
  has_many :container, through: :containerorders

  validates :ordernum, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, presence: true
  validates :date, presence: true
  validates :customer_id, presence: true
  validates :lotstock, numericality: { greater_than_or_equal_to: 0}, presence: true
  validates :quantity, numericality: { greater_than: 1 }, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0}, presence: true
  validates :total, numericality: { greater_than_or_equal_to: :price}, presence: true
  validates :orderstatus, presence: true

end
