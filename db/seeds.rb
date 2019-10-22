# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Park.destroyAll

parkAPI = 'https://data.winnipeg.ca/resource/tx3d-pfxq.json'
uriPark = URI(parkAPI)
response = Net::HTTP.get(uriPark)
parkHash = JSON.parse(response)

parkHash.each do |i|
  newPark = Park.create(name: i['park_name'],
                        address: i['location_description'],
                        category: i['park_category']).save
  200.times do
    newTree.trees.build(botanical_name: Faker::Name.name,
                        common_name: Faker::Name.first_name,
                        lat: Faker::Address.latitude,
                        long: Faker::Address.longitude)
end
# puts "Created #{Park.count} of park"
