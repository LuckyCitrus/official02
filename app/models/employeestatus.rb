class Employeestatus < ApplicationRecord
  validates :employeestatus, presence: true, length: { maximum: 128 }
end
