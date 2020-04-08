class Orderinvoice < ApplicationRecord

  #dependencies
  belongs_to :order
  belongs_to :invoice

  #field validation
  validates :order_id, presence: true
  validates :invoice_id, presence: true

end
