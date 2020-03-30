class Orderinvoice < ApplicationRecord
  belongs_to :order
  belongs_to :invoice

  validates :order_id, presence: true
  validates :invoice_id, presence: true
end
