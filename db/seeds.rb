# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

CSV.foreach(Rails.root.join('db/seeds/Clients.csv'), headers: true) do |row|
  
  Client.create({source_id: row[0].to_i, name: row[1], address: row[2],
  				 city: row[3], state: row[4], division: row[5],
  				 major_group: row[6].to_i, industry_group: row[7].to_i,
  				 SIC: row[8].to_i, description: row[9]
  })
end

CSV.foreach(Rails.root.join('db/seeds/Carriers.csv'), headers: true) do |row|
  
  Carrier.create({source_id: row[0].to_i, company_name: row[1], company_address: row[2],
  				 company_address_2: row[3], company_city: row[4], company_state: row[5],
  				 company_zip: row[6]
  })
end

CSV.foreach(Rails.root.join('db/seeds/Policies.csv'), headers: true) do |row|
  Policy.create({source_id: row[0].to_i, policy_type: row[1], division: row[2],
           carrier_id: row[3].to_i, client_id: row[4].to_i, effective_date: row[5],
           expiration_date: row[6], written_premium: row[7].to_i,
           carrier_policy_number: row[8].to_i
  })
end