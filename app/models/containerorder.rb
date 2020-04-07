class Containerorder < ApplicationRecord

  #dependencies
  belongs_to :container
  belongs_to :order

  #field validation
  validates :container_id, presence: true
  validates :order_id, presence: true
end
