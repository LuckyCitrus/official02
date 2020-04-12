class Department < ApplicationRecord

  #dependencies
  belongs_to :company

  #normalized for
  has_many :employees

  #fields validation
  validates :departmentname, presence: true, length: { maximum: 128 }
  # validates :company_id, presence: true
end
