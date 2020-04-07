class Keystatus < ApplicationRecord

	#normalized for
	has_many :cars

	#fields validation
	validates :keystatus, presence: true, length: { maximum: 128 }

end
