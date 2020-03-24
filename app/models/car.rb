class Car < ApplicationRecord
  # belongs_to :titlestatus
  # belongs_to :keystatus

#  belongs_to :order

  def car_name
    "#{make} #{model} #{year}"
  end
end
