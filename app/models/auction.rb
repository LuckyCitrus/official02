class Auction < ApplicationRecord

  belongs_to :location

  #Order Round
  has_many :order_auctions
  has_many :orders, through: :order_auctions

  validates :auctionname, presence: true, length: { minimum: 3, maximum: 36 }
  validates :address, presence: true, length: { minimum: 5, maximum: 72 }
  validates :location_id, presence: true

end
