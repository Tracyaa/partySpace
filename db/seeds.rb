# require 'faker'
#
# Booking.destroy_all
# Favorite.destroy_all
# User.destroy_all
# Venue.destroy_all
#
#
# img_urls = ["https://nationalsawdust.org/wp-content/uploads/2017/05/facebook-nationalsawdust.jpg", "https://nationalsawdust.org/wp-content/uploads/blue@sawdust-1-1.jpg", "https://c1.staticflickr.com/7/6201/6078984864_95ec08b9c1_b.jpg",
# "http://gumballspartyroom.com/wp-content/uploads/photo-gallery/ROOM_2_SEATING_FACING_CANNON.jpg", "http://artscapeyoungplace.ca/wp-content/uploads/2015/02/109-quare1.jpg", "https://static1.squarespace.com/static/5829c499c534a550aa02cc99/t/5b2cf7fbaa4a99c8978c85bb/1529673746007/Gather_Cincy_Event_Space.JPG?format=500w",
# "http://www.pastordave.net/wp-content/uploads/2016/03/Event-Space-Rental.jpg", "https://res.cloudinary.com/dr-phillips-center/image/upload/c_fill,f_auto,g_auto,h_480,q_auto,w_720/event-space-rental_1_wqews6.jpg",
# "https://res.cloudinary.com/breather-com/image/upload/c_fit,f_auto,h_800,q_auto,w_1200/v1/locations/p/49-geary-417-1502118244644.jpg?auto=format,compress&w=430&q=50", "http://www.youshouldbedancing.com/party_room_8.jpg", "https://www.harleysvillerental.com/images/party-venue.jpg"]
#
#
# activities = ["Birthday Party", "Wedding Shower", "Baby Shower", "Corporate", "Dinner", "Party"]
# amenities = ["Lights", "Music Equipment", "Sound System", "Table Seating", "Catering"]
#
#
# 8.times do
#   User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Alphanumeric.alphanumeric(10), img_url: Faker::Avatar.image)
# end
#
#
# 8.times do
#   Venue.create(name: Faker::Games::Zelda.location, location: Faker::Address.street_address, price: rand(50..3000), capacity: rand(10..300), activity: activities.sample, amenities: amenities.sample, img_url: img_urls.sample, user_id: User.all.sample.id)
# end
#
# 25.times do
#   Booking.create(user_id: User.all.sample.id, venue_id: Venue.all.sample.id, total_price: rand(100..5000), duration: rand(1..10))
# end
#
# 20.times do
#   Favorite.create(user_id: User.all.sample.id, venue_id: Venue.all.sample.id)
# end
#
# puts "Seeds created"



require 'faker'

Booking.destroy_all
Favorite.destroy_all
Venue.destroy_all
User.destroy_all


img_urls = ["https://nationalsawdust.org/wp-content/uploads/2017/05/facebook-nationalsawdust.jpg", "https://nationalsawdust.org/wp-content/uploads/blue@sawdust-1-1.jpg", "https://c1.staticflickr.com/7/6201/6078984864_95ec08b9c1_b.jpg",
"http://gumballspartyroom.com/wp-content/uploads/photo-gallery/ROOM_2_SEATING_FACING_CANNON.jpg", "http://artscapeyoungplace.ca/wp-content/uploads/2015/02/109-quare1.jpg", "https://static1.squarespace.com/static/5829c499c534a550aa02cc99/t/5b2cf7fbaa4a99c8978c85bb/1529673746007/Gather_Cincy_Event_Space.JPG?format=500w",
"http://www.pastordave.net/wp-content/uploads/2016/03/Event-Space-Rental.jpg", "https://res.cloudinary.com/dr-phillips-center/image/upload/c_fill,f_auto,g_auto,h_480,q_auto,w_720/event-space-rental_1_wqews6.jpg",
"https://res.cloudinary.com/breather-com/image/upload/c_fit,f_auto,h_800,q_auto,w_1200/v1/locations/p/49-geary-417-1502118244644.jpg?auto=format,compress&w=430&q=50", "http://www.youshouldbedancing.com/party_room_8.jpg", "https://www.harleysvillerental.com/images/party-venue.jpg", "https://s-ec.bstatic.com/images/hotel/max1024x768/796/79600146.jpg","https://pix6.agoda.net/agaff/aff.bstatic.com/images/hotel/max1024x768/804/80486308.jpg", "http://2.bp.blogspot.com/-3wzU7Am99vo/UiO-k8rpX4I/AAAAAAAAA3E/st7WpzbS1T0/s1600/IMG_3974.jpg", "http://sezio.org/pix/fckeditor/image/Swim%20Party/swimparty.jpg", "https://gbdtest.wpengine.com/wp-content/uploads/2014/09/Kakaako-Agora-angle-shot.jpg", "http://www.6am-group.com/wp-content/uploads/2015/07/Asylum-Dance-floor-1.jpeg"]


activities = ["Birthday Party", "Wedding Shower", "Baby Shower", "Corporate", "Dinner", "Party"]
amenities = ["Lights", "Music Equipment", "Sound System", "Table Seating", "Catering"]
venue_locations = [
  "SoHo",
  "DUMBO",
  "Greenwhich Village",
  "Midtown",
  "Chelsea",
  "Williamsburg",
  "Bushwick",
  "Astoria",
  "Gramercy",
  "Upper West Side",
  "Upper East Side",
  "FiDi",
  "Chinatown",
  "Lower East Side",
  "East Village",
  "Union Square",
  "Fresh Meadows",
  "Flushing",
  "Bayside",
  "Long Island City",
  "Jamaica",
  "Forest Hill",
  "Central Park",
  "The Bronx",
  "Harlem",
  "Time Square",
  "Meat Packing",
  "Tribeca",
  "Jersey City",
  "St. Mark's"
]


profile_photos = [
  "https://randomuser.me/api/portraits/men/30.jpg",
  "https://randomuser.me/api/portraits/men/7.jpg",
  "https://randomuser.me/api/portraits/men/90.jpg",
  "https://randomuser.me/api/portraits/men/4.jpg",
  "https://randomuser.me/api/portraits/men/5.jpg",
  "https://randomuser.me/api/portraits/women/7.jpg",
  "https://randomuser.me/api/portraits/women/35.jpg",
  "https://randomuser.me/api/portraits/women/69.jpg",
  "https://randomuser.me/api/portraits/women/21.jpg",
  "https://randomuser.me/api/portraits/lego/6.jpg",
  "https://i5.walmartimages.com/asr/c374ce07-d31a-4f7c-b282-18c1e2cdfb17_1.85f7b9b3e90e0768bfef45f034c322ea.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
  "https://images-na.ssl-images-amazon.com/images/I/61%2B6aK7EfBL._SX425_.jpg",
  "https://images-na.ssl-images-amazon.com/images/I/811buVUOl6L._SX425_.jpg",
  "https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/108950/123497/apijs9yp4__31485.1461382967.jpg?c=2&imbypass=on"
]




10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Alphanumeric.alphanumeric(5), img_url: profile_photos.sample)
end

# venue = Venue.create(name: Faker::Games::Zelda.location, location: Faker::Address.street_address, price: rand(50..3000), capacity: rand(10..300), activity: nil, amenities: nil, img_url: img_urls.sample, user_id: User.all.sample.id)

20.times do
  Venue.create(name: venue_locations.sample, location: Faker::Address.street_address, price: rand(50..3000), capacity: rand(10..300), activity: activities.sample, amenities: amenities.sample, img_url: img_urls.sample, user_id: User.all.sample.id)
end

25.times do
  Booking.create(user_id: User.all.sample.id, venue_id: Venue.all.sample.id, total_price: rand(100..5000), duration: rand(1..10))
end

25.times do
 Favorite.create(user_id: User.all.sample.id, venue_id: Venue.all.sample.id)
end


puts "#{User.all.count} Users & #{Venue.all.count} Venues created"
