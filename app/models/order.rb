class Order < ApplicationRecord
  belongs_to :orderstatus
  belongs_to :picture
  belongs_to :customer
  belongs_to :auction
  has_many :cars
  belongs_to :container
end
