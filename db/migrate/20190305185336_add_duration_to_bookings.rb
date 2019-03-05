class AddDurationToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :duration, :integer
  end
end
