class Containerorder < ApplicationRecord
  belongs_to :container
  belongs_to :order

  validates :container_id, presence: true
  validates :order_id, presence: true

end
