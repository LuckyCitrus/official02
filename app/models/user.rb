class User < ApplicationRecord
  has_one :employee, dependent: :destroy
  has_one :customer, dependent: :destroy

  #Active Storage
  has_many :images

  enum role: [:customer, :employee, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :customer
  end

  def timeout_in
    if self.admin? 
      4.hours
    else
      1.days
    end
  end

  # Include default devise modules. Others available are:
  #  :lockable, :trackable,  :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable, :timeoutable, :confirmable, :recoverable
end
