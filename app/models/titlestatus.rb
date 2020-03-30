class Titlestatus < ApplicationRecord
  validates :titlestatus, presence: true, length: { minimum: 2, maximum: 30 }
end
