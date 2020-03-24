class Auction < ApplicationRecord
  belongs_to :location
  has_many :orders
end
