class Order < ApplicationRecord

  #dependencies
  belongs_to :orderstatus
  belongs_to :customer
  belongs_to :container
  belongs_to :invoice
  belongs_to :auction

  #delete cascading
  has_many :cars, dependent: :destroy
  has_many :images, dependent: :destroy

  #nested forms
  accepts_nested_attributes_for :cars, reject_if: :all_blank, allow_destroy: :true

  #fields validation
  validates :ordernum, presence: true, if: ->(order) {order.persisted?}, uniqueness: true, length: { maximum: 128 }#, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }
  validates :date, presence: true
  validates :customer_id, presence: true
  validates :lotstock, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :total, presence: true, numericality: { greater_than_or_equal_to: :price}
  validates :orderstatus, presence: true

end
