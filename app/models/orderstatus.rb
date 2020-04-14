class Orderstatus < ApplicationRecord

  #normalized for
  has_many :orders, dependent: :destroy

  #fields validation
  validates :orderstatus, presence: true, length: { maximum: 128 }

end
