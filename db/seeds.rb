require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'historians.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
 t = Historian.new
 t.historian_id = row['historian_id']
 t.name = row['name']
 t.date_born = row['date_born']
 t.place_born= row['place_born']
 t.date_died = row['date_died']
 t.place_died = row['place_died']
 t.overview = row['overview']
 t.home_country = row['home_country']
 t.sources = row['sources']
 t.bibliography = row['bibliography']
 t.other_names = row['other_names']
 t.notes = row['notes']
 t.gender = row['gender']
 t.subject_area = row['subject_area']
 t.path = row['path']
 t.save
 puts "#{t.name} saved"
end