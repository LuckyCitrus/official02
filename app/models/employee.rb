class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :employeestatus
  #belongs_to :dummyuser
  belongs_to :user, optional: true

  def emp_fullname
    "#{empfname} #{emplname}"
  end

  validates :empfname, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }
  validates :emplname, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }
  validates :address, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, length: { minimum: 5, maximum: 24}
  validates :title, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }
  validates :hiredate, presence: true
  validates :employeestatus_id, presence: true

end
