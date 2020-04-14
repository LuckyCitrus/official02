class Order < ApplicationRecord

  #dependencies
  belongs_to :orderstatus
  belongs_to :customer

  #delete cascading
  has_many :orderinvoices, dependent: :destroy
  has_many :order_auctions, dependent: :destroy
  has_many :cars, dependent: :destroy
  has_many :containerorders, dependent: :destroy
  has_many :images, dependent: :destroy

  #associative relations
  has_many :containers, through: :containerorders
  has_many :invoices, through: :orderinvoices
  has_many :auctions, through: :order_auctions
  has_many :payments, through: :invoices

  #nested forms
  accepts_nested_attributes_for :cars, reject_if: :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :order_auctions, reject_if: :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :orderinvoices, reject_if: :all_blank, allow_destroy: :true

  #fields validation
  validates :ordernum, presence: true, if: ->(order) {order.persisted?}, uniqueness: true, length: { maximum: 128 }#, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }
  validates :date, presence: true
  validates :customer_id, presence: true
  validates :lotstock, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :total, presence: true, numericality: { greater_than_or_equal_to: :price}
  validates :orderstatus, presence: true

  def order_info
    "#{ordernum} (#{customer.first_name} #{customer.last_name})"
  end

end
