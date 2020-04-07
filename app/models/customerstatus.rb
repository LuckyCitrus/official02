class Customerstatus < ApplicationRecord

  #delete cascading
  has_many :customers, dependent: :destroy

  #field validation
  validates :customerstatus, presence: true, length: { maximum: 128 }
end
