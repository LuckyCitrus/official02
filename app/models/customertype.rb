class Customertype < ApplicationRecord
  # belongs_to :customers

  validates :customertype, presence: true, length: { maximum: 128 }
end
