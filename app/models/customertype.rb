class Customertype < ApplicationRecord

  #delete cascading
  has_many :customers, dependent: :destroy

  #field validation
  validates :customertype, presence: true, length: { maximum: 128 }
end
