class ChatRoom < ApplicationRecord
  belongs_to :event
  has_many :users, through: :events
  has_many :messages, dependent: :destroy
end
