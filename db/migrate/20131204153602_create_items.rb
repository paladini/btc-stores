class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :url_original
      t.string :url_shortned
      t.integer :isActive

      t.timestamps
    end
  end
end
