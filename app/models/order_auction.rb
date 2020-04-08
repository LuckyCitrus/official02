class OrderAuction < ApplicationRecord

  #dependencies
  belongs_to :order
  belongs_to :auction

  #fields validation
  validates :order_id, presence: true
  validates :auction_id, presence: true

end
