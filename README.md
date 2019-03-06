# PARTY SPACE #

- A site where a USER can search for, book, update, and delete a booking for an event space (VENUE) in NYC.
- The USER can seach for VENUEs by date, location, price, capacity, and type/activity (eg, bday party, dinners, baby/wedding showers, corporate parties, etc.)
- The USER has the option to BOOK or FAVORITE the VENUE.
- The USER can MESSAGE the VENUE.


# Models: #

## USER ##
- name
- password (unique)
- email (unique)
- image url (profile photo)

## VENUE ##
- name
- location
- price (per hour)
- capacity
- type/activity (collection_select)
- amenities/features (of venue)
- image url
- user_id

## BOOKING ##
- user_id
- venue_id
- date (of booking)
- total_price (price * hours)

## FAVORITE ##
- user_id
- venue_id
- comment/note on favorite eg, "second option" (optional)

# Optional #
## MESSAGE ##
- user_id
- venue_id / host_id
- content
- date/time (timestamp)


# To Run Program: #
1. $ bundle install
2. $ db:migrate
3. $ rake db:seed
4. $ rails s
