class Store < ActiveRecord::Base
	    has_many :organization
		has_many :address
	has_many :title
end

