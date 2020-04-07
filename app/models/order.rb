class Order < ApplicationRecord

  #dependencies
  belongs_to :orderstatus
  belongs_to :customer

  #delete cascading
  has_many :orderinvoices, dependent: :destroy
  has_many :order_auctions, dependent: :destroy
  has_many :cars, dependent: :destroy
  has_many :containerorders, dependent: :destroy
  has_many :pictures, dependent: :destroy

  #associative relation
  has_many :containers, through: :containerorders
  has_many :invoices, through: :orderinvoices
  has_many :auctions, through: :order_auctions

  #nested form
  accepts_nested_attributes_for :cars, reject_if: :all_blank, allow_destroy: :true

  #field validation
  validates :ordernum, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { maximum: 128 }
  validates :date, presence: true
  validates :customer_id, presence: true
  validates :lotstock, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :total, presence: true, numericality: { greater_than_or_equal_to: :price}
  validates :orderstatus, presence: true

end
