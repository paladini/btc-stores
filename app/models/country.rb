class Country < ActiveRecord::Base

	# Relationships
	has_many :item

	# Validations
	validates_uniqueness_of :name, :case_sensitive => false
	
end
