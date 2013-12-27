namespace :crawl_usebitcoin do
  
  desc "Web crawl for parse UseBitcoin stores."
  task test: :environment do

  	require 'rubygems'
  	require 'open-uri'
  	require 'nokogiri' 
  	require 'json'

  	url = "http://usebitcoins.info/index.php/services/digital-marketing"

  	# Saves the whole page
  	doc = Nokogiri::HTML(open(url))
  	doc.encoding = 'utf-8'

  	# Type
	type = doc.xpath("//ul[@class='breadcrumbnomarginbottom nopaddingbottom']/li[2]/a")
	type = type.first.text

  	# Category
	category = doc.xpath("//ul[@class='breadcrumbnomarginbottom nopaddingbottom']/li[3]/span")
	category = category.first.text

	type_category = type + " - " + category

  end

  task parse_all_stores: :environment do

  	require 'rubygems'

  	links = [

  		"http://usebitcoins.info/index.php/services/advertising",
  		"http://usebitcoins.info/index.php/services/digital-marketing",
  		"http://usebitcoins.info/index.php/services/consulting",
  		"http://usebitcoins.info/index.php/services/it/it-training",
  		"http://usebitcoins.info/index.php/services/communications",
  		"http://usebitcoins.info/index.php/services/community-space",
  		"http://usebitcoins.info/index.php/services/non-profit",
  		"http://usebitcoins.info/index.php/services/employment",
  		"http://usebitcoins.info/index.php/services/escrow",
  		"http://usebitcoins.info/index.php/services/events",
  		"http://usebitcoins.info/index.php/services/financial/trading",
  		"http://usebitcoins.info/index.php/services/payment",
  		"http://usebitcoins.info/index.php/services/insurance",
  		"http://usebitcoins.info/index.php/services/real-estate",
  		"http://usebitcoins.info/index.php/services/internet-cafe",
  		"http://usebitcoins.info/index.php/services/hosting-services",
  		"http://usebitcoins.info/index.php/services/voip-vpn",
  		"http://usebitcoins.info/index.php/services/file-sharing",
  		"http://usebitcoins.info/index.php/services/streaming-video",
  		"http://usebitcoins.info/index.php/services/web-development/security",
  		"http://usebitcoins.info/index.php/services/design-arts/product-design",
  		"http://usebitcoins.info/index.php/services/design-arts/photography",
  		"http://usebitcoins.info/index.php/services/design-arts/tattoo",
  		"http://usebitcoins.info/index.php/services/home-decor-architecture",
  		"http://usebitcoins.info/index.php/services/landscaping",
  		"http://usebitcoins.info/index.php/services/printing",
  		"http://usebitcoins.info/index.php/services/3d-printing",
  		"http://usebitcoins.info/index.php/services/transportations",
  		"http://usebitcoins.info/index.php/services/cleaning",
  		"http://usebitcoins.info/index.php/services/maintenance-repairing/services-auto",
  		"http://usebitcoins.info/index.php/services/maintenance-repairing/services-computer-electronics",
  		"http://usebitcoins.info/index.php/services/maintenance-repairing/services-appliances",
  		"http://usebitcoins.info/index.php/services/maintenance-repairing/services-watches",
  		"http://usebitcoins.info/index.php/services/maintenance-repairing/services-home",
  		"http://usebitcoins.info/index.php/services/audio-video/services-mastering",
  		"http://usebitcoins.info/index.php/services/audio-video/recordings",
  		"http://usebitcoins.info/index.php/services/audio-video/video-production",
  		"http://usebitcoins.info/index.php/services/multimedia",
  		"http://usebitcoins.info/index.php/services/legal/legal-forms",
  		"http://usebitcoins.info/index.php/services/accounting",
  		"http://usebitcoins.info/index.php/services/medical",
  		"http://usebitcoins.info/index.php/services/healthcare",
  		"http://usebitcoins.info/index.php/services/educational",
  		"http://usebitcoins.info/index.php/services/online",
  		"http://usebitcoins.info/index.php/services/outsourcing",
  		"http://usebitcoins.info/index.php/services/written-content/translations",

  		"http://usebitcoins.info/index.php/goods/art",
  		"http://usebitcoins.info/index.php/goods/auto",
  		"http://usebitcoins.info/index.php/goods/books-cd-dvd",
  		"http://usebitcoins.info/index.php/goods/clothing",
  		"http://usebitcoins.info/index.php/goods/accessories",
  		"http://usebitcoins.info/index.php/goods/for-babies",
  		"http://usebitcoins.info/index.php/goods/downloadables/ebooks",
  		"http://usebitcoins.info/index.php/goods/energy",
  		"http://usebitcoins.info/index.php/goods/food",
  		"http://usebitcoins.info/index.php/goods/general-goods",
  		"http://usebitcoins.info/index.php/goods/gold-jewellery",
  		"http://usebitcoins.info/index.php/goods/hardware/automotive",
  		"http://usebitcoins.info/index.php/goods/hardware/bitcoin",
  		"http://usebitcoins.info/index.php/goods/hardware/communications",
  		"http://usebitcoins.info/index.php/goods/hardware/manufactures",
  		"http://usebitcoins.info/index.php/goods/industrial-building/materials",
  		"http://usebitcoins.info/index.php/goods/industrial-building/equipment",
  		"http://usebitcoins.info/index.php/goods/software",
  		"http://usebitcoins.info/index.php/goods/home-garden",
  		"http://usebitcoins.info/index.php/goods/handcrafts",
  		"http://usebitcoins.info/index.php/goods/sports-outdoor",
  		"http://usebitcoins.info/index.php/goods/travel-accessories",
  		"http://usebitcoins.info/index.php/goods/misc",
  		"http://usebitcoins.info/index.php/goods/consumables",
  		"http://usebitcoins.info/index.php/goods/3d-printers",
  		"http://usebitcoins.info/index.php/goods/collectibles-toys",
  		"http://usebitcoins.info/index.php/goods/welfare",
  		"http://usebitcoins.info/index.php/goods/for-pets"
  	]

  	links_length = links.size
  	puts links_length

  # 	links.each_with_index do |url, index|
  		
  # 		# Get the currently percentage
  # 		percent = index * 100 / links_length
  # 		puts "..."
  # 		puts percent.to_s + "%"

  # 		# Calling another Rails Task
		# Rake::Task['crawl_usebitcoin:parse_all_generic'].invoke(url)
  # 	end

  	puts "Finished!!"

  end

  task :parse_all_generic, [:url] => [:environment] do |t, args|

  	require 'rubygems'
  	require 'open-uri'
  	require 'nokogiri'

  	# Global variables
  	# -----------------------------------
  	continue = true

  	# Store all stores (to be saved in a physical file later)
  	all_stores = []

  	# Desired URL for running web crawl
  	base_url = "http://usebitcoins.info"
  	url = args['url']

  	#------------------------------------
  	#

  	# Saves the whole page
  	doc = Nokogiri::HTML(open(url))
  	doc.encoding = 'utf-8'

  	# Type
	type = doc.xpath("//ul[@class='breadcrumbnomarginbottom nopaddingbottom']/li[2]/a")
	type = type.first.text
	type = type.downcase

  	# Category
	category = doc.xpath("//ul[@class='breadcrumbnomarginbottom nopaddingbottom']/li[3]/span")
	category = category.first.text
	category = category.downcase
	category = category.gsub(" ","-")

	# Joining
	type_category = type + " - " + category

	

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

  	write_to_file_generic(all_stores, category)
  
  end # end this task

  # Create a file with all_stores (in JSON) to be imported to database later
  def write_to_file_generic(all_stores, category, type)
  	if(type == 'goods' || type == 'services')
	  	File.open("public/#{type}/#{category}.json", "w") { |f| f.write(all_stores.to_json) }
  	else
  		puts "Something went wrong."
  	end
  end























  # General parse method
  # Get from user the needed data
  task parse: :environment do

  	find_category = false

  	while find_category == false do
	  	
	  	# # Get the category from the user
	  	# puts "Type your category: "
	  	# search_category = gets.chomp
	  	# search_category = search_category.downcase
	  	search_category = "sports"
	  	url = "http://usebitcoins.info/index.php/goods/sports-outdoor"

	  	# Try to find this category
	  	categories = []
	  	Category.where("lower(name) LIKE :search or lower(slug) LIKE :search", 
	        { :search => "%" + search_category + "%" }).order("name asc").each do |category|
	        categories << category
	    end

	    if categories.length == 1
	  		puts "Your category: " + categories.first.name
	  		puts url
	  		puts "---------------------------------------"
	  		# puts "Usebitcoin URL:"
	  		# url = gets.chomp
	  		# url = url.strip

	  		# Calling another Rails Task
	  		# rake parse_generic[categories.first,url]
	  		Rake::Task['crawl_usebitcoin:parse_generic'].invoke(categories.first,url)
	  		# Rake.application.invoke_task(parse_generic[categories.first,url])
	  		find_category = true
	  	else
	  		puts "More than category finded, please fix your search"
	  		find_category = false
	  	end 
	end

  end


  

  # ------------------------
  # Generic parse for generic categories
  # ------------------------

  task :parse_generic, [:category, :url] => [:environment] do |t, args|

  	require 'rubygems'
  	require 'open-uri'
  	require 'nokogiri'

  	# Global variables
  	# -----------------------------------
  	
  	# Category to be saved all stores
	category = args['category']
  	country = Country.find_by_short_name("US")
  	continue = true

  	# Store all stores (to be saved in a physical file later)
  	all_stores = []

  	# Desired URL for running web crawl
  	base_url = "http://usebitcoins.info"
  	url = args['url']

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






  # ------------------------
  # Automotive
  # ------------------------

  task parse_automotive: :environment do

  	require 'rubygems'
  	require 'open-uri'
  	require 'nokogiri'

  	# Global variables
  	# -----------------------------------
  	
  	# Category to be saved all stores
	category = Category.find_by_slug("automotive")
  	country = Country.find_by_short_name("US")
  	continue = true

  	# Store all stores (to be saved in a physical file later)
  	all_stores = []

  	# Desired URL for running web crawl
  	base_url = "http://usebitcoins.info"
  	url = "http://usebitcoins.info/index.php/goods/auto"

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








  # ------------------------
  # SOFTWARE
  # ------------------------

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























  # ------------------------------------
  #
  #            COMMON METHODS
  #
  # ------------------------------------

  

 
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
    
	# Delete address, if exist
	if this_store_description.include?("address:")
		this_store_description = this_store_description.split("address:").first
	end

	# Delete phone, if exist
	if this_store_description.include?("phone:")
		this_store_description = this_store_description.split("phone:").first
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
		end
	else
		this_store_description = this_store_description[0..temp_length]
	end
	temp_length = nil

	return this_store_description
  end

  # Function to get the correct country for this store
 #  def get_country(this_store_description)
	# # Verify if can find the correct country of this store
	# this_store_description.split(/\W+/).each_with_index do |word|

	# 	country = Country.where("name LIKE :search", { :search => "%" + word + "%" })
	# end
	# return country
 #  end

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
	  File.open("public/data-crowled/#{category.slug}-data.txt", "w") { |f| f.write(all_stores.to_json) }
  end

end
