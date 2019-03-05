class User < ApplicationRecord
  has_many :venue_bookings, through: :bookings, source: :venue
  has_many :venue_favorites, through: :favorites, source: :venue
end
