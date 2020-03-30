class Customertype < ApplicationRecord
  # belongs_to :customers

  validates :customertype, presence: true, length: { minimum: 2, maximum: 30 }
end
