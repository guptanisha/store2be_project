class Organization < ActiveRecord::Base
	has_one :page

	scope :visible, lambda { where(:visible => true)}
scope :invisible, lambda { where(:visible => false)}
scope :sorted, lambda { order("Organizations.position ASC")}
scope :newest_first, lambda { order("Organizations.created_at DESC ")}
scope :search, lambda { |query|
  where(["name LIKE ?","%#{query}%"])
}
end
