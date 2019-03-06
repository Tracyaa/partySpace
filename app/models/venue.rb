class Venue < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  # validates :location, presence: true
  # validates :capacity, presence: true
  # validates :activity, length: {is:1}
  # validates :amenities, presence: true

  def self.sort_by_price
    Venue.all.sort_by {|venue| venue.price}
  end
end
