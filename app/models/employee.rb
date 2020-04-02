class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :employeestatus
  #belongs_to :dummyuser
  belongs_to :user, optional: true

  def emp_fullname
    "#{empfname} #{emplname}"
  end

  validates :empfname, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }, length: { maximum: 128 }
  validates :emplname, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }, length: { maximum: 128 }
  validates :address, presence: true, length: { maximum: 128 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, length: { maximum: 254 }
  validates :phone, presence: true, length: { maximum: 64 }
  validates :title, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { maximum: 128 }
  validates :hiredate, presence: true
  validates :employeestatus_id, presence: true

end
