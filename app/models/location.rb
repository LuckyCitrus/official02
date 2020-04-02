class Location < ApplicationRecord
  has_many :auctions
  has_many :warehouses
  has_many :shipments, through: :warehouses

  validates :city, presence: true, length: { maximum: 128 }
end
