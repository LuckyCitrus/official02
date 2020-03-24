class Dummyuser < ApplicationRecord
  belongs_to :dummyrole
  has_one :employee
  has_one :customer
end
