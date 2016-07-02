class Address < ActiveRecord::Base
	belongs_to :organization
	has_and_belongs_to_many :admin_users, :class_name => "AdminUser"
end
