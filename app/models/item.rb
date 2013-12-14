class Item < ActiveRecord::Base

	# Relationship with Country
	belongs_to :country
	accepts_nested_attributes_for :country
	# validates_associated :country - this model already is inserted, don't need to check the 
	# validaty of the model, because this is already validated - just need check if this field is 
	# filled in. 

	# Relationship with Category
	belongs_to :category 
	accepts_nested_attributes_for :category
	# validates_associated :category

	# General validations
	validates :name, length: { minimum: 3, maximum: 48 }, presence: true, 
	uniqueness: true

	validates :description, length: { minimum: 5, maximum: 140 }, presence: true

	validates :url_original, length: { minimum: 8, maximum: 70 }, presence: true, 
	uniqueness: true

	validates :country_id, presence: true
	validates :category_id, presence: true


end
