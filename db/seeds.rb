
puts "Destroy all"
Booking.destroy_all
Event.destroy_all
Sport.destroy_all
User.destroy_all
puts "Create all"

def random_user
 user = User.all.sample
end



user_1 = User.create!(first_name: 'Alan', last_name: 'Glam', email: 'alanglam@gmail.com', password: '123456', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80')
user_2 = User.create!(first_name: 'Moshe', last_name: 'Sandmann',email: 'moshe@gmail.com', password: '123456', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80')
user_3 = User.create!(first_name: 'Leah', last_name: 'Sadoun',email: 'leah@gmail.com', password: '123456', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80', remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80')

sport = Sport.create!(name: 'Soccer', picture: 'Soccer.png')
sport_2 = Sport.create!(name: 'Bowling', picture:'Bowling.png')
sport_3 = Sport.create!(name: 'Tennis', picture:'Tennis.png')

sport_4 = Sport.create!(name: 'Basketball', picture:'Basketball.png')
sport_5 = Sport.create!(name: 'Beach-Volley', picture:'Beach-volley.png')
sport_6 = Sport.create!(name: 'Ping Pong', picture:'Ping-pong.png')

sport_7 = Sport.create!(name: 'Football', picture:'Football.png')
sport_8 = Sport.create!(name: 'Billiard', picture:'Pool.png')
sport_9 = Sport.create!(name: 'Volley-ball', picture:'Volley-1.png')






puts "Seeds created"
