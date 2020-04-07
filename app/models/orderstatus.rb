class Orderstatus < ApplicationRecord

  #delete cascading
  has_many :orders, dependent: :destroy

  #field validation
  validates :orderstatus, presence: true, length: { maximum: 128 }
end
