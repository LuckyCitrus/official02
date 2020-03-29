class User < ApplicationRecord
  has_one :employee
  has_one :customer

  enum role: [:customer, :employee, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :customer
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable,  :omniauthable, :recoverable, 
  devise :database_authenticatable, :registerable, :rememberable, :validatable, :timeoutable

end
