class Department < ApplicationRecord
  belongs_to :company

  validates :departmentname, presence: true, length: { maximum: 128 }
  validates :company_id, presence: true
end
