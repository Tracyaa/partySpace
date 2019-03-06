class ApplicationController < ActionController::Base
  before_action :set_amenity_and_activities

  private

  def set_amenity_and_activities
    @amenities = ["Lights", "Music Equipment", "Sound System", "Table Seating", "Catering"]
    @activities = ["Birthday Party", "Wedding Shower", "Baby Shower", "Corporate", "Dinner", "Party"]
  end
end
