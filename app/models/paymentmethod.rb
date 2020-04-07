class Paymentmethod < ApplicationRecord

  #normalized for
  has_many :payments

  #fields validation
  validates :paymenttype, presence: true, length: { maximum: 128 }

end
