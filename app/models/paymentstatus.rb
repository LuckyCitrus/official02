class Paymentstatus < ApplicationRecord

  #normalized for
  has_many :payments

  #fields validation
  validates :paymentstatus, presence: true, length: { maximum: 128 }

end
