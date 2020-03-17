class Order < ApplicationRecord
  belongs_to :orderstatus
  belongs_to :picture
  belongs_to :customer
end
