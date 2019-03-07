class User < ApplicationRecord
  has_many :venues
  has_many :bookings
  has_many :venue_bookings, :through => :bookings, :source => :venue
  has_many :favorites
  has_many :venue_favorites, through: :favorites, source: :venue

  validates :email, { presence: true, uniqueness: true }
  # validates :password, { presence: true }

  has_secure_password

end
