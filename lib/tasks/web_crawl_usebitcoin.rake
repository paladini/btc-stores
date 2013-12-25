namespace :web_crawl_usebitcoin do
  desc "Web crawl for parse UseBitcoin stores."
  
  task parse_softwares_test: :environment do

  	require 'rubygems'
  	require 'open-uri'
  	require 'nokogiri' 

  	url = "http://usebitcoins.info/index.php/goods/software?start=24"
  	doc = Nokogiri::HTML(open(url))
  	doc.encoding = 'utf-8'

  	next_button = nil
  	next_button = doc.xpath("//li[@class='pagination-next']/a")

  	puts next_button.empty? 
  	# puts next_button[0].to_s


  end

  task parse_softwares: :environment do

  	require 'rubygems'
  	require 'open-uri'
  	require 'nokogiri'

  	# Global variables
  	# -----------------------------------
  	
  	# Category to be saved all stores
	category = Category.find_by_slug("software-games")
  	country = Country.find_by_short_name("US")
  	continue = true

  	# Store all stores (to be saved in a physical file later)
  	all_stores = []

  	# Desired URL for running web crawl
  	base_url = "http://usebitcoins.info"
  	url = "http://usebitcoins.info/index.php/goods/software"

  	#------------------------------------
  	#

  	# Saves the whole page
  	doc = Nokogiri::HTML(open(url))
  	doc.encoding = 'utf-8'

  	while continue == true do

  		# Parsing the links of all stores of this page
	  	links = []
	  	doc.xpath("//article/h2/a").each do |link|
	  		links << link['href']
	  	end

	  	# Get the store links of this page
	  	links.each do |link|
	  		
	 		# Download the page of the current store
	  		this_store = Nokogiri::HTML(open(base_url + link.to_s))
	  		
	  		# Get store title
	  		this_store_title = get_title(this_store)

	  		# Get store description
	  		this_store_description = get_description(this_store)

	  		# Get store link
	  		this_store_link = get_link(this_store)

	  		puts this_store_title + " - " + this_store_link

	  		# Saving this store to database
	  		item = Item.new(
		      :name => this_store_title, 
		      :description => this_store_description,
		      :url_original => this_store_link,
		      :isActive => 1, 
		      :country_id => country.id,
		      :category_id => category.id
		    )

		    # if item.save
		    # 	puts "Item saved!"
		    # end
		    all_stores << item

  		end # end links of this page

  		# Discover if have a next page
		doc = get_next_page(doc)
		if doc.nil?
			continue = false
		else
			continue = true
			doc.encoding = 'utf-8'	
		end

  	end # end while of all pages

  	write_to_file(all_stores, category)
  end # end this rake task

  # Function to get Store title
  def get_title(this_store)
  	this_store_title = this_store.xpath("//article/h2/a").text
	this_store_title = this_store_title.strip
	this_store_title = this_store_title.capitalize

	return this_store_title
  end


  # Function to get Store description
  def get_description(this_store)
  	
  	this_store_description = ""
  	this_store.xpath("//article/p | //article/li").each_with_index do |descr, index|
  		
  		# If index != 0, them downcase the text
  		if index > 0
  			
	  		# If current node is a <li>, them add a "," to text
  			if descr.node_name == 'li'
  				this_store_description += descr.text.downcase + ", "
	  		else
	  			this_store_description += descr.text.downcase 
	  		end
  		else

  			# If current node is a <li>, them add a "," to text
  			if descr.node_name == 'li'
	  			this_store_description += descr + ", "
	  		else
	  			this_store_description += descr 
	  		end
  		end	
  	end	
 
	this_store_description = this_store_description.strip

	# Delete site link, if exist
	if this_store_description.include?("site link:")
		this_store_description = this_store_description.split("site link:").first
	end
    
	# This way, remove "." of all strings probably will work
	this_store_description = this_store_description.gsub(".", ". ")

	# Check if description have more than 140 characters
	temp_length = this_store_description.length
	if temp_length > 138
		
		this_store_description = this_store_description[0..137]
		this_store_description = this_store_description + ".."
		number_of_dots = (this_store_description.count(".") - 2)

		# Check presence of dots
		if number_of_dots > 0
			
			# Stores the correct valeu of string
			correct_string = ""

			this_store_description.split("").each_with_index do |c, index|
				if index >= 40
					if c == '.'
						correct_string = this_store_description[0..(index+1)]
						break
					end
				end
			end

			this_store_description = correct_string

			# Check if the first dot is in the beggining of string (what can indicate "Inc.")
			# if this_store_description.index(".") < 40
			# 	this_store_description = this_store_description[0..137]
			# 	this_store_description = this_store_description + ".."
			# else
			# 	this_store_description = this_store_description.split(".").first
			# 	this_store_description = this_store_description + "."
			# end
		end
	else
		this_store_description = this_store_description[0..temp_length]
	end
	temp_length = nil

	return this_store_description
  end

  # Function to get Store link
  def get_link(this_store)
  	this_store_link = this_store.xpath("//article/p[@class='success']/a/@href")
  	this_store_link = this_store_link.text

  	return this_store_link
  end

  # Returns if have next page
  def get_next_page(doc)
  	have_next_page = doc.xpath("//li[@class='pagination-next']/a")
  	
  	doc = nil

  	if !have_next_page.empty?
  		base_url = "http://usebitcoins.info"
  		have_next_page = have_next_page[0]['href'].to_s
  		doc = Nokogiri::HTML(open(base_url + have_next_page))
  	end
  	
  	return doc
  end

  # Create a file with all_stores (in JSON) to be imported to database later
  def write_to_file(all_stores, category)
	  File.open("#{category.name}-data.txt", "w") { |f| f.write(all_stores.to_json) }
  end

end
