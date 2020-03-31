class Company < ApplicationRecord
  has_many :departments

  validates :companyname, presence: true, length: { minimum: 3, maximum: 36 }
end
