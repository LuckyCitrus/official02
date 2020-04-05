class Orderstatus < ApplicationRecord
  has_many :orders

  validates :orderstatus, presence: true, length: { maximum: 128 }
end
