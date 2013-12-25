namespace :data do
  desc "import data from files to database"
  
  task import: :environment do
  	# file = File.open(<file to import>)
   #  file.each do |line|
   #    attrs = line.split(":")
   #    p = Product.find_or_initialize_by_identifier(attrs[0])
   #    p.name = attrs[1]
   #    etc...
   #    p.save!
   #  end
  end

end
