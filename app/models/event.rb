class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :sport
  belongs_to :user
  has_many :bookings
  TIMES = ["01:00","01:30", "02:00", "02:30", "03:00"]
  CITIES = ['- Select a City -', "Tel Aviv", "Herzliya", "Ashdod", "Ashkelon", "Jerusalem", "Raanana"]

  def available_slots
    self.capacity - self.bookings.count
  end
  def full?
    self.available_slots == 0
  end

end
