class Item < ActiveRecord::Base

	has_one :country

	has_one :category 
end
