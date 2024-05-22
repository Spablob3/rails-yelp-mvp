# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'belgian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'french' }
pica_pau_amarelo = { name: 'Pica Pau Amarelo', address: '50B Paraíso do Sol, Rio de Janeiro E4 6FT', category: 'chinese' }
ananas = { name: 'Ananás', address: 'Rua dá-me um abraço, Porto 4150-500', category: 'italian' }
tc = { name: 'TC', address: 'World of wine Street, Gaia R1 8PQ', category: 'japanese' }

[dishoom, pizza_east, pica_pau_amarelo, ananas, tc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
