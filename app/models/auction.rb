class Auction < ApplicationRecord
  belongs_to :location

  #Order Round
  has_many :order_auctions
  has_many :orders, through: :order_autions
end
