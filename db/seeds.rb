
puts "Destroy all"
Booking.destroy_all
Event.destroy_all
Sport.destroy_all
User.destroy_all
puts "Create all"

def random_user
 user = User.all.sample
end



user_1 = User.create!(first_name: 'Alan', last_name: 'Glam', email: 'alanglam@gmail.com', password: '123456', image:'alan.png')
user_2 = User.create!(first_name: 'Moshe', last_name: 'Sandmann',email: 'moshe@gmail.com', password: '123456', image:'moshe.png', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80')
user_3 = User.create!(first_name: 'Leah', last_name: 'Sadoun',email: 'leah@gmail.com', password: '123456', image:'leah.png', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80')
user_4 = User.create!(first_name: 'Gabriel', last_name: 'Zerbib', email: 'gabriel@gmail.com', password: '123456', image:'gabriel.png')
user_5 = User.create!(first_name: 'Baraa', last_name: 'Shrem', email: 'baraa@gmail.com', password: '123456', image:'bara.png')
user_6 = User.create!(first_name: 'Cory', last_name: 'Adelman', email: 'cory@gmail.com', password: '123456', image:'cory.png')
user_7 = User.create!(first_name: 'Thomas', last_name: 'Freund', email: 'thomas@gmail.com', password: '123456', image:'thomas.png')

sport = Sport.create!(name: 'Soccer', picture: 'Soccer.png')
sport_2 = Sport.create!(name: 'Bowling', picture:'Bowling.png')
sport_3 = Sport.create!(name: 'Tennis', picture:'Tennis.png')

sport_4 = Sport.create!(name: 'Basketball', picture:'Basketball.png')
sport_5 = Sport.create!(name: 'Beach-Volley', picture:'Beach-volley.png')
sport_6 = Sport.create!(name: 'Ping Pong', picture:'Ping-pong.png')

sport_7 = Sport.create!(name: 'Football', picture:'Football.png')
sport_8 = Sport.create!(name: 'Billiard', picture:'Pool.png')
sport_9 = Sport.create!(name: 'Volley-ball', picture:'Volley-1.png')

event_1 = Event.create!(sport: sport_5, address: "ben yeuda 2", city: "Tel Aviv", date: Time.now, user: user_1, capacity: 10)
chat_room_1 = ChatRoom.create!(event: event_1, name:"Beach-Volley", )

message = Message.create!( user: user_4, content: "I agree with u @Cory!", chat_room: chat_room_1)
message = Message.create!( user: user_6, content: "Let's play next week guys!", chat_room: chat_room_1)
message = Message.create!( user: user_5, content: "Looks impossible to play with this weather", chat_room: chat_room_1)
message = Message.create!( user: user_3, content: "It's raining too muchh!!!", chat_room: chat_room_1)
message = Message.create!( user: user_1, content: "Balagannn!!", chat_room: chat_room_1)



puts "Seeds created"
