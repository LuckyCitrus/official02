class Location < ApplicationRecord

  #delete cascading
  has_many :auctions, inverse_of: :location, dependent: :destroy
  has_many :warehouses, dependent: :destroy

  #nested form
  accepts_nested_attributes_for :warehouses, reject_if: :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :auctions, reject_if: :all_blank, allow_destroy: :true

  #field validation
  validates :city, presence: true, length: { maximum: 128 }
  validates :city, presence: true, length: { maximum: 36 }
end
