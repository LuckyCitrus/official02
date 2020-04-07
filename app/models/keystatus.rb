class Keystatus < ApplicationRecord

	#delete cascading
	has_many :cars, dependent: :destroy

	#fields validation
	validates :keystatus, presence: true, length: { maximum: 128 }

end
