namespace :import do
  desc "import neighbourhoods from CSV"
  task neighbourhood: :environment do
    require 'csv'
    CSV.foreach('tmp/neighbourhoods.csv', headers: true) do |row|
  	  neighbourhood = Neighbourhood.find_or_create_by(name: row['name'])
  	  neighbourhood.update_attributes(row.to_h)
	  end
  end
end
