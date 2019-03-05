class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.integer :capacity
      t.string :activity
      t.string :amenities
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
