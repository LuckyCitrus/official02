class Company < ApplicationRecord
  has_many :departments

  validates :companyname, presence: true
end
