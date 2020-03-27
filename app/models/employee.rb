class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :employeestatus
  #belongs_to :dummyuser
  belongs_to :user, optional: true

  def emp_fullname
    "#{empfname} #{emplname}"
  end

end
