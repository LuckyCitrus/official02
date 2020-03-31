class Paymentstatus < ApplicationRecord
  validates :paymentstatus, presence: true, length: { minimum: 2, maximum: 30 }
end
