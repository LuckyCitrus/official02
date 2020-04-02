class Company < ApplicationRecord
  has_many :departments

  validates :companyname, presence: true, length: { maximum: 128 }
end
