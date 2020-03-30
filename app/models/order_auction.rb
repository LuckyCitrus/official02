class OrderAuction < ApplicationRecord
  belongs_to :order
  belongs_to :auction

  validates :order_id, presence: true
  validates :auction_id, presence: true

end
