class Event < ApplicationRecord
  belongs_to :sport
  belongs_to :user
  has_many :bookings
  CITIES = ['- Select a City -', "Tel Aviv", "Herzliya", "Ashdod", "Ashkelon", "Jerusalem", "Raanana"]
end
