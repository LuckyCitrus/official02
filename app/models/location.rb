class Location < ApplicationRecord
  has_many :auctions
  has_many :warehouses
  has_many :shipments, through: :warehouses
end
