class Shipmentstatus < ApplicationRecord
  validates :shipmentstatus, presence: true, length: { maximum: 128 }
end
