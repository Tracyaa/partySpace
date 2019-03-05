require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
img_urls = ["https://nationalsawdust.org/wp-content/uploads/2017/05/facebook-nationalsawdust.jpg", "https://nationalsawdust.org/wp-content/uploads/blue@sawdust-1-1.jpg"]

prices = [100, 150, 200, 250, 300, 350]


10.times do
  User.create(name: Faker::Name.name, location: Fake::Address.city, price: (0..10).sample)
end

10.times do
  Venue.create()
end
