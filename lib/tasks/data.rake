namespace :data do
  desc "import data from files to database"
  
  task import: :environment do
  	
  	require 'rubygems'
  	require 'json'

  	# Get the file
  	file = File.read('public/all-stores-data.txt')
  	
  	# Parse the file to json
  	all_stores = ActiveSupport::JSON.decode(file)

  	# Converting JSON into object
  	#all_stores = JSON.load(json)
  	# all_stores = json

  	# Adding all content to database
  	all_stores.each do |json_hash|
  		
  		# Creating a new object with the data of JSON hash
  		store = Item.new(
  			:name => json_hash['name'], 
	        :description => json_hash['description'],
		    :url_original => json_hash['url_original'],
		    :isActive => 1, 
		    :country_id => json_hash['country_id'],
		    :category_id => json_hash['category_id']
  		)
  		
  		# Trying to save to DB
  		if store.save
  			puts "Saved!"
  		end

  	end
  end

end
