class Customerstatus < ApplicationRecord
  has_many :customers

  validates :customerstatus, presence: true, length: { maximum: 128 }
end
