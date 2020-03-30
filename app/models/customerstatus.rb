class Customerstatus < ApplicationRecord
  # belongs_to :customers

  validates :customerstatus, presence: true, length: { minimum: 2, maximum: 30 }
end
