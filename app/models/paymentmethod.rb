class Paymentmethod < ApplicationRecord
  validates :paymenttype, presence: true, length: { maximum: 128 }
end
