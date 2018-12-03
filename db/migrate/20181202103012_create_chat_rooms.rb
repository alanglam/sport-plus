class CreateChatRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_rooms do |t|
      t.references :event
      t.string :name

      t.timestamps
    end
  end
end
