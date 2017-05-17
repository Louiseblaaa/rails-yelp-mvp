# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Au Tigre Roux",
    address:      "65 place Saint-Âmé 59500 Douai",
    phone_number: "01.23.45.76.89",
    category:     "french"
  },
  {
    name:         "Chez Penny",
    address:      "15 rue Emile Morlaix 59500 Douai",
    phone_number: "01.32.54.76.98",
    category:     "italian"
  },
  {
    name:         "Shepard's",
    address:      "317 rue de Cambrai 59500 Douai",
    phone_number: "01.89.67.45.23",
    category:     "japanese"
  },
  {
    name:         "Le Newton",
    address:      "17 rue Paul Trinet 59500 Douai",
    phone_number: "01.74.85.96.26",
    category:     "belgian"
  },
  {
    name:         "La Gallifrey",
    address:      "Passage Leborgne 59500 Douai",
    phone_number: "01.42.53.86.97",
    category:     "chinese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
