class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :employeestatus
  #belongs_to :dummyuser
  belongs_to :user, optional: true

  def emp_fullname
    "#{empfname} #{emplname}"
  end

  validates :empfname, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }, length: { minimum: 2, maximum: 36 }
  validates :emplname, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }, length: { minimum: 2, maximum: 36 }
  validates :address, presence: true, length: { minimum: 5, maximum: 72 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, length: { minimum: 5, maximum: 254 }
  validates :phone, presence: true, length: { minimum: 5, maximum: 24 }
  validates :title, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { minimum: 3, maximum: 36 }
  validates :hiredate, presence: true
  validates :employeestatus_id, presence: true

end
