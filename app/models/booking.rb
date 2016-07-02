class Booking < ActiveRecord::Base
	has_many :organization
	has_many :space
end
