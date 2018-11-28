class Event < ApplicationRecord
  CITIES = ["Tel Aviv", "Herzliya", "Ashdod", "Ashkelon", "Jerusalem", "Raanana"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :sport
  belongs_to :user
  has_many :bookings
end
