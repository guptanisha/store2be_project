class Space < ActiveRecord::Base
	has_many :Store
	has_many :title
end
