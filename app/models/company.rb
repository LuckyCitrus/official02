class Company < ApplicationRecord

  #normalized for
  has_many :departments

  #associative relation
  has_many :employees, through: :departments

  #nested form
  accepts_nested_attributes_for :departments, reject_if: :all_blank, allow_destroy: :true

  #field validation
  validates :companyname, presence: true, length: { maximum: 128 }

end
