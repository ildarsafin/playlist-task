require 'csv'

namespace :import do
  task import_users: :environment do
    csv = File.read('csv/user_data.csv')

    CSV.parse(csv, headers: true).each do |row|
      User.create!(row.to_hash)
    end
  end

  task import_mp3: :environment do
    csv = File.read('csv/mp3_data.csv')

    CSV.parse(csv, headers: true).each do |row|
      hashed_row = row.to_hash

      hashed_row = rehash_row(row) if row.key?(nil)

      Mp3Entity.find_or_create_by!(
        id: hashed_row["ID"],
        title: hashed_row["Title"],
        interpret: hashed_row["Interpret"],
        album: hashed_row["track"],
        year: hashed_row["year"],
        genre: hashed_row["genre"]
      )
    end
  end

  private

  def rehash_row(row)
    headers = row.headers - [nil]
    str_row = row.to_s
    replaced_comma_str = str_row.gsub(/, /, '; ')
    new_row = CSV::Row.new(headers, replaced_comma_str.split(','), header_row = false)
    hashed_row = new_row.to_hash

    return hashed_row
  end
end
