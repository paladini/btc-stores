class AddColumnIdcountryToItem < ActiveRecord::Migration
  def change

  	# Adding reference (Foreign Key) of country to Item (Now Item will have a country_id field).
  	add_reference :items, :country, index: true
  	
  end
end
