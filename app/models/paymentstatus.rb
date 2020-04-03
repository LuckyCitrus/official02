class Paymentstatus < ApplicationRecord
  validates :paymentstatus, presence: true, length: { maximum: 128 }
end
