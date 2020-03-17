class Customer < ApplicationRecord
  belongs_to :country
  belongs_to :customerstatus
  belongs_to :customertype
  has_many :orders
  has_many :payments
end
