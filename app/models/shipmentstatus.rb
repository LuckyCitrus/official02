class Shipmentstatus < ApplicationRecord
  validates :shipmentstatus, presence: true, length: { minimum: 2, maximum: 30 }
end
