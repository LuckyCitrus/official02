class Containerorder < ApplicationRecord

  #dependencies
  belongs_to :container
  belongs_to :order

  #fields validation
  validates :container_id, presence: true
  validates :order_id, presence: true

end
