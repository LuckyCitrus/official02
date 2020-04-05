class Customerstatus < ApplicationRecord
  belongs_to :customers

  validates :customerstatus, presence: true, length: { maximum: 128 }
end
