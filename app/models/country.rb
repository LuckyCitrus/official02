class Country < ApplicationRecord
  has_many :customers
  
  validates :country_name, presence: true, length: { maximum: 128 }
end
