class Titlestatus < ApplicationRecord

  #normalized for
  has_many :cars

  #fields validation
  validates :titlestatus, presence: true, length: { maximum: 128 }

end
