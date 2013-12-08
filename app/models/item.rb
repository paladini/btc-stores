class Item < ActiveRecord::Base

	# Relationship with Country
	belongs_to :country
	accepts_nested_attributes_for :country

	# Relationship with Category
	belongs_to :category 
	accepts_nested_attributes_for :category

end
