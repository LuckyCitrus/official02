class Employeestatus < ApplicationRecord

  #delete cascading
  has_many :employees, dependent: :destroy

  #field validation
  validates :employeestatus, presence: true, length: { maximum: 128 }
end
