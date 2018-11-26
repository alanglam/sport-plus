class Event < ApplicationRecord
  belongs_to :sport
  belongs_to :user
  has_many :bookings
end
