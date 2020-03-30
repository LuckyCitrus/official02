class Car < ApplicationRecord
   belongs_to :titlestatus
   belongs_to :keystatus
   belongs_to :order

  validates :vinnumber, presence: true, length: { minimum: 11, maximum: 17 }
  validates :year, presence: true, inclusion: { in: 1900..Date.today.year+1 }, format: { with: /(19|20)\d{2}/i }
  validates :make, presence: true
  validates :model, presence: true
  validates :titlestatus_id, presence: true
  validates :keystatus_id, presence: true
  validates :order_id, presence: true

  def car_info
    " #{year} #{make} #{model}"
  end
end
