class Country < ApplicationRecord

  #delete cascading
  has_many :customers

  #fields validation
  validates :country_name, presence: true, length: { maximum: 128 }

end
