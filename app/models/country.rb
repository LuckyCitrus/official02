class Country < ApplicationRecord
  # belongs_to :customers
  
  validates :country_name, presence: true, length: { maximum: 128 }
end
