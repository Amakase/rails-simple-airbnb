# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Clearing databases..."
Flat.destroy_all

puts "Creating flats"
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Stylish Tower Flat Norwich',
  address: '202 Summertime Lane',
  description: 'A flat decorated with the cutting edge in modern art. Two bathrooms reduce conflicts among your party',
  price_per_night: 150,
  number_of_guests: 6
)

Flat.create!(
  name: 'Doom and Gloom Mordor Flat',
  address: '7344 Mount Doom',
  description: 'Easy to walk into! Party with the orcs and be awed by the giant eye in the sky! Beware possible psychological effects.',
  price_per_night: 70,
  number_of_guests: 2
)

Flat.create!(
  name: 'Tower of Babel Flat',
  address: '3340 Shinar Lane',
  description: 'Feel close to god every day! Come in speaking one language, and leave speaking ten! Guaranteed to knock you over',
  price_per_night: 200,
  number_of_guests: 10
)

puts "...created #{Flat.count} flats"
