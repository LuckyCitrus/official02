class Location < ApplicationRecord

  has_many :auctions

# Nested Form Model
  has_many :warehouses, dependent: :destroy
  accepts_nested_attributes_for :warehouses, reject_if: :all_blank, allow_destroy: :true
# End of Nested Form Model

  # has_many :shipments, through: :warehouses
end
