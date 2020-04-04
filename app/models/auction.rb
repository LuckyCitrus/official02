class Auction < ApplicationRecord

  belongs_to :location

  #Order Round
  has_many :order_auctions
  has_many :orders, through: :order_auctions

  validates :auctionname, presence: true, length: { maximum: 128 }
  validates :address, presence: true, length: { maximum: 128 }
  # validates :location_id, presence: true

end
