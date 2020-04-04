class Location < ApplicationRecord
  # Nested Form Model
  has_many :auctions, inverse_of: :location
  accepts_nested_attributes_for :auctions, reject_if: :all_blank, allow_destroy: :true
# End of Nested Form Model

# Nested Form Model
  has_many :warehouses, inverse_of: :location
  accepts_nested_attributes_for :warehouses, reject_if: :all_blank, allow_destroy: :true
# End of Nested Form Model

  has_many :shipments, through: :warehouses

  validates :city, presence: true, length: { maximum: 128 }
  validates :city, presence: true, length: { maximum: 36 }

end
