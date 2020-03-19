class Dummyuser < ApplicationRecord
  belongs_to :dummyrole
  has_one :employee
end
