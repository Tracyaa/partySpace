# PARTY SPACE # 

- A site where a USER can search for, book, update, and delete a booking for an event space (VENUE) in NYC.
- The USER can seach for VENUEs by date, location, price, capacity, and type/activity (eg, bday party, dinners, baby/wedding showers, corporate parties, etc.)
- The USER has the option to BOOK or FAVORITE the VENUE.
- The USER can MESSAGE the VENUE.



## USER ##
- name
- username (unique)
- password (unique)
- email (unique)
- image url (profile photo)

## VENUE/SPACE ##
- name
- location
- price_per_hour
- capacity
- type/activity (collection_select)
- amenities/features (of venue)
- image url
- user_id

## BOOKING [JOIN]##
- user_id
- venue_id
- date (of booking)
- total_price (price * hours)

## FAVORITE [JOIN]##
- user_id
- venue_id
- comment

# Optional #
## MESSAGE [JOIN]##
- user_id
- venue_id / host_id
- content
- date/time (timestamp)
