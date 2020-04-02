class Titlestatus < ApplicationRecord
  validates :titlestatus, presence: true, length: { maximum: 128 }
end
