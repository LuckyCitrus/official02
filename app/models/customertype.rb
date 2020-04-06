class Customertype < ApplicationRecord
  has_many :customers

  validates :customertype, presence: true, length: { maximum: 128 }
end
