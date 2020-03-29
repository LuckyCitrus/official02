class Auction < ApplicationRecord
  belongs_to :location

  #Order Round
  has_many :order_auctions
  has_many :orders, through: :order_auctions

  validates :auctionname, presence: true
  validates :address, presence: true
  validates :location_id, presence: true

end
