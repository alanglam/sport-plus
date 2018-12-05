class Sport < ApplicationRecord
  has_many :events
  PICTURES = ['Soccer', 'Basketball', 'Beach-volley', 'Ping-pong', 'Pool', 'Bowling', 'Football', 'Tennis', 'Volley']

  def daily_events
    events.select do |event|
      event.date.day == Date.today.day
    end
  end
end
