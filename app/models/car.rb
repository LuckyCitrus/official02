class Car < ApplicationRecord
   belongs_to :titlestatus
   belongs_to :keystatus
   belongs_to :order

  def car_info
    " #{year} #{make} #{model}"
  end
end
