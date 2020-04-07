class Department < ApplicationRecord

  #dependencies
  belongs_to :company

  #delete cascading
  has_many :employees, dependent: :destroy

  #field validation
  validates :departmentname, presence: true, length: { maximum: 128 }
  validates :company_id, presence: true
end
