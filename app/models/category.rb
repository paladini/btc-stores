class Category < ActiveRecord::Base 

	extend FriendlyId
	friendly_id :name, use: :slugged

	# Validations
	validates_uniqueness_of :name, :case_sensitive => false

	# Relationships
	has_many :item

end
