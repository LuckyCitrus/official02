class Customer < ApplicationRecord
  has_many :country
  has_many :customerstatus
  has_many :customertype
  has_many :dummyuser

  belongs_to :orders
  has_many :payments

  def cus_fullname
    "#{first_name} #{last_name}"
  end

end
