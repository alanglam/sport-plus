class Sport < ApplicationRecord
  has_many :events
  PICTURES = ['Soccer', 'Basketball', 'Beach-volley', 'Ping-pong', 'Pool', 'Bowling', 'Football', 'Tennis', 'Volley']

  def weekly_events
    events.where(date: Date.today)
  end

  def daily_events
    events.where(date: Date.today.beginning_of_week(:sunday)..Date.today)
  end
end
