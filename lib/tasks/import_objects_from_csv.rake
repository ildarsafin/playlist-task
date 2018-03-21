require 'csv'

namespace :import do
  task import_users: :environment do
    csv_text = File.read('csv/user_data.csv')
    csv = CSV.parse(csv_text, :headers => true)

    csv.each do |row|
      User.create!(row.to_hash)
    end
  end
end
