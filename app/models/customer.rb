class Customer < ApplicationRecord
  belongs_to :country
  belongs_to :customerstatus
  belongs_to :customertype
  has_many :orders
  has_many :payments
  belongs_to :dummyuser

  def full_name
    "#{first_name} #{last_name}"
  end

end
