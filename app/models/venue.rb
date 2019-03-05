class Venue < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :location, presence: true
  validates :capacity, presence: true
  validates :activity, {presence: true, length: {is:1}}
  validates :amenities, presence: true

end
