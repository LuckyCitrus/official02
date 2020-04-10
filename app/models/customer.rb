class Customer < ApplicationRecord

  #dependencies
  belongs_to :country
  belongs_to :customerstatus
  belongs_to :customertype
  belongs_to :user, optional: true

  #normalized for
  has_many :invoices

  #delete cascading
  has_many :orders, dependent: :destroy
  has_many :payments, dependent: :destroy
  has_many :cars, through: :orders
  has_many :invoices
  has_many :shipments, through: :invoices

  #fields validation
  validates :first_name, presence: true, format: { with: /\A[a-z ][a-z- ]*[a-z-' ]\z/i }, length: { maximum: 128 }
  validates :last_name, presence: true, format: { with: /\A[a-z ][a-z- ]*[a-z-' ]\z/i }, length: { maximum: 128 }
  validates :address, presence: true, length: { maximum: 128 }
  validates :phone, presence: true, length: { maximum: 64 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, length: { maximum: 254 }
  validates :user_id, uniqueness: true, allow_nil: true

  def cus_fullname
    "#{first_name} #{last_name}"
  end

end
