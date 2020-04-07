class Customertype < ApplicationRecord

  #normalized for
  has_many :customers

  #fields validation
  validates :customertype, presence: true, length: { maximum: 128 }

end
