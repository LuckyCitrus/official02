class Department < ApplicationRecord
  belongs_to :company

  validates :departmentname, presence: true, length: { minimum: 3, maximum: 36 }
  validates :company_id, presence: true
end
