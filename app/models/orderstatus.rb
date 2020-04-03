class Orderstatus < ApplicationRecord
  has_many :orders

  validates :customerstatus, presence: true, length: { maximum: 128 }
end
