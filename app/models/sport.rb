class Sport < ApplicationRecord
  has_many :events
  PICTURES = ['Soccer', 'Basketball', 'Beach-volley', 'Volley', 'Pool', 'Bowling', 'Football', 'Tennis', 'Ping-pong']
end
