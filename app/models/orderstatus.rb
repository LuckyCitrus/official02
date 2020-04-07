class Orderstatus < ApplicationRecord

  #normalized for
  has_many :orders

  #fields validation
  validates :orderstatus, presence: true, length: { maximum: 128 }

end
