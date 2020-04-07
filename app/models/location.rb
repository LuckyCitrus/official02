class Location < ApplicationRecord

  #normalized for
  has_many :auctions, inverse_of: :location
  has_many :warehouses

  #nested forms
  accepts_nested_attributes_for :warehouses, reject_if: :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :auctions, reject_if: :all_blank, allow_destroy: :true

  #fields validation
  validates :city, presence: true, length: { maximum: 128 }
  validates :city, presence: true, length: { maximum: 36 }

end
