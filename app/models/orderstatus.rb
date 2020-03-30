class Orderstatus < ApplicationRecord
  has_many :orders

  validates :customerstatus, presence: true, length: { minimum: 2, maximum: 30 }
end
