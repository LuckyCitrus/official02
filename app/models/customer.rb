class Customer < ApplicationRecord
  has_many :country
  has_many :customerstatus
  has_many :customertype
  #has_many :dummyuser
  belongs_to :user, optional: true

  has_many :orders
  has_many :payments, dependent: :destroy
  
  validates :first_name, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }, length: { maximum: 128 }
  validates :last_name, presence: true, format: { with: /\A[a-z][a-z-]*[a-z-']\z/i }, length: { maximum: 128 }
  validates :address, presence: true, length: { maximum: 128 }
  validates :phone, presence: true, length: { maximum: 64 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, length: { maximum: 254 }

  def cus_fullname
    "#{first_name} #{last_name}"
  end

end
