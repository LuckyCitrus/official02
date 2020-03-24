class Customer < ApplicationRecord
  belongs_to :country
  belongs_to :customerstatus
  belongs_to :customertype
  has_many :orders
  has_many :payments
  belongs_to :dummyuser

  def cus_fullname
    "#{first_name} #{last_name}"
  end

end
