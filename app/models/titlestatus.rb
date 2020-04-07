class Titlestatus < ApplicationRecord

  #delete cascading
  has_many :cars, dependent: :destroy

  #fields validation
  validates :titlestatus, presence: true, length: { maximum: 128 }

end
