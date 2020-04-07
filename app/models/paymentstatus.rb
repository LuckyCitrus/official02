class Paymentstatus < ApplicationRecord

  #delete cascading
  has_many :payments, dependent: :destroy

  #field validation
  validates :paymentstatus, presence: true, length: { maximum: 128 }

end
