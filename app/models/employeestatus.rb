class Employeestatus < ApplicationRecord
  validates :employeestatus, presence: true, length: { minimum: 2, maximum: 30 }
end
