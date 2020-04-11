class Employeestatus < ApplicationRecord

  #normalized for
  has_many :employees

  #fields validation
  validates :employeestatus, presence: true, length: { maximum: 128 }

end
