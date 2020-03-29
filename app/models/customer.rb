class Customer < ApplicationRecord
  has_many :country
  has_many :customerstatus
  has_many :customertype
  has_many :dummyuser
  belongs_to :user, optional: true

  has_many :orders
  has_many :payments
  
  validates :first_name, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }
  validates :last_name, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }
  validates :address, presence: true
  validates :phone, presence: true, length: { minimum: 5, maximum: 24}
  validates :email, presence: true, unique: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def cus_fullname
    "#{first_name} #{last_name}"
  end

end
