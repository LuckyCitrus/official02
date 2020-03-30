class Country < ApplicationRecord
  # belongs_to :customers
  
  validates :country_name, presence: true, length: { minimum: 2, maximum: 60 }
end
