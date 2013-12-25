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

	# Before save
	before_save :generate_shortened_url
	def generate_shortened_url
		self.url_shortned = get_shortened_url(self.url_original)
	end


	# Get the shortened URL
    def get_shortened_url(url)

      # My ID of CoinURL
      uuid = "5295ff66f2b7d971159514";

      # Making the GET request for CoinURL
      response = Unirest.get("https://coinurl.com/api.php?uuid=#{uuid}&url=#{url}", headers: {}, parameters: nil, auth:nil)

      if(response.body == 'error')
        return false;
      else
        return response.body;
      end
    end


end
