class Auction < ApplicationRecord

  #dependencies
  belongs_to :location

  #normalized for
  has_many :order_auctions

  #associative relations
  has_many :orders, through: :order_auctions

  #fields validation
  validates :auctionname, presence: true, length: { maximum: 128 }
  validates :address, presence: true, length: { maximum: 128 }
  # validates :location_id, presence: true

end
