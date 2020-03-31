class Paymentmethod < ApplicationRecord
  validates :paymenttype, presence: true, length: { minimum: 2, maximum: 30 }
end
