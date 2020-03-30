class Employeestatus < ApplicationRecord
  # belongs_to :customers

  validates :employeestatus, presence: true, length: { minimum: 2, maximum: 30 }
end
