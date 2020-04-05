class Company < ApplicationRecord
  has_many :departments, dependent: :destroy
  has_many :employees, through: :departments
  accepts_nested_attributes_for :departments, reject_if: :all_blank, allow_destroy: :true

  validates :companyname, presence: true, length: { maximum: 128 }
end
