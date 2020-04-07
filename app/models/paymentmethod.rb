class Paymentmethod < ApplicationRecord

  #delete cascading
  has_many :payments, dependent: :destroy

  #field validation
  validates :paymenttype, presence: true, length: { maximum: 128 }

end
