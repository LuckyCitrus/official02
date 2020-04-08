class Customerstatus < ApplicationRecord

  #normalized for
  has_many :customers

  #fields validation
  validates :customerstatus, presence: true, length: { maximum: 128 }

end
