require 'faker'

Booking.destroy_all
Favorite.destroy_all
User.destroy_all
Venue.destroy_all


img_urls = ["https://nationalsawdust.org/wp-content/uploads/2017/05/facebook-nationalsawdust.jpg", "https://nationalsawdust.org/wp-content/uploads/blue@sawdust-1-1.jpg", "https://c1.staticflickr.com/7/6201/6078984864_95ec08b9c1_b.jpg",
"http://gumballspartyroom.com/wp-content/uploads/photo-gallery/ROOM_2_SEATING_FACING_CANNON.jpg", "http://artscapeyoungplace.ca/wp-content/uploads/2015/02/109-quare1.jpg", "https://static1.squarespace.com/static/5829c499c534a550aa02cc99/t/5b2cf7fbaa4a99c8978c85bb/1529673746007/Gather_Cincy_Event_Space.JPG?format=500w",
"http://www.pastordave.net/wp-content/uploads/2016/03/Event-Space-Rental.jpg", "https://res.cloudinary.com/dr-phillips-center/image/upload/c_fill,f_auto,g_auto,h_480,q_auto,w_720/event-space-rental_1_wqews6.jpg",
"https://res.cloudinary.com/breather-com/image/upload/c_fit,f_auto,h_800,q_auto,w_1200/v1/locations/p/49-geary-417-1502118244644.jpg?auto=format,compress&w=430&q=50", "http://www.youshouldbedancing.com/party_room_8.jpg", "https://www.harleysvillerental.com/images/party-venue.jpg"]


activities = ["Birthday Party", "Wedding Shower", "Baby Shower", "Corporate", "Dinner", "Party"]
amenities = ["Lights", "Music Equipment", "Sound System", "Table Seating", "Catering"]


10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Alphanumeric.alphanumeric(10), img_url: Faker::Avatar.image)
end

10.times do
  Venue.create(name: Faker::Games::Zelda.location, location: Faker::Address.street_address, price: rand(50..3000), capacity: rand(10..300), activity: activities.sample, amenities: amenities.sample(rand(1..4)), img_url: img_urls.sample, user_id: User.all.sample.id)
end

5.times do
  Booking.create(user_id: User.all.sample.id, venue_id: Venue.all.sample.id, total_price: rand(100..5000), duration: rand(1..10))
end

10.times do
  Favorite.create(user_id: User.all.sample.id, venue_id: Venue.all.sample.id)
end
