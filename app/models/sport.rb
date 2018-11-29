class Sport < ApplicationRecord
  has_many :events
  PICTURES = ['Soccer', 'Basketball', 'Beach-volley', 'Ping-pong', 'Pool', 'Bowling', 'Football', 'Tennis', 'Volley']
end
