# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "92828372817383",
    category:      "japanese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "627263736283",
    category:     "japanese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  "00000000000",
    category:      "japanese"
  },
  {
    name:         "Pok Pok",
    address:      "Portland, USA",
    phone_number:  "+44 0000000000",
    category:      "japanese"
  },
  {
    name:         "Dishoom",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0029288377378",
    category:     "japanese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished restaurants'
puts 'Creating reviews...'
reviews = [
  {
  content:        "Shitty restaurant",
  rating:         0,
  restaurant_id:  1
  },
  {
  content:        "Good restaurant",
  rating:         4,
  restaurant_id:  1
  },
  {
  content:        "Ok restaurant",
  rating:         0,
  restaurant_id:  2
  },
  {
  content:        "Nice restaurant",
  rating:         4,
  restaurant_id:  2
  },
  {
  content:        "Crappy restaurant",
  rating:         2,
  restaurant_id:  3
  },
  {
  content:        "Lovely restaurant",
  rating:         4,
  restaurant_id:  3
  },
  {
  content:        "Wonderful restaurant",
  rating:         5,
  restaurant_id:  4
  },
  {
  content:        "Shitty restaurant",
  rating:         3,
  restaurant_id:  4
  },
  {
  content:        "Fucking restaurant",
  rating:         3,
  restaurant_id:  5
  },
  {
  content:        "Rubbish restaurant",
  rating:         1,
  restaurant_id:  5
  }
]
Review.create!(reviews)
puts 'Finished!'
