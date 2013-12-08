class AddReferenceItemsCategory < ActiveRecord::Migration
  def change

  	# Adding reference (Foreign Key) of category to Item (Now Item will have a category_id field).
  	add_reference :items, :category, index: true

  end
end
