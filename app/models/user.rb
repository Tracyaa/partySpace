class User < ApplicationRecord
  has_many :venues
  has_many :bookings
  # has_many :venue_bookings, through: :bookings, source: :venues
  has_many :venue_bookings, :through => :bookings, :source => :venue
  # 'has_many :venue_bookings, :through => :bookings, :source => <name>'. Is it one of user or venue?
  has_many :favorites
  has_many :venue_favorites, through: :favorites, source: :venue

end
