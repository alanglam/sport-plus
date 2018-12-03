class AddReferenceChatRoom < ActiveRecord::Migration[5.2]
  def change
     add_reference :chat_rooms, :event, index: true
  end
end



