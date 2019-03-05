class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :venue, foreign_key: true
      t.datetime :date
      t.integer :total_price

      t.timestamps
    end
  end
end
