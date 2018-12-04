
puts "Destroy all"
Booking.destroy_all
Event.destroy_all
Sport.destroy_all
User.destroy_all
puts "Create all"

def random_user
 user = User.all.sample
end

chat_room = ChatRoom.create!(name: "general")

user_1 = User.create!(first_name: 'Alan', last_name: 'Glam', email: 'alanglam@gmail.com', password: '123456')
user_2 = User.create!(first_name: 'Moshe', last_name: 'Sandmann',email: 'moshe@gmail.com', password: '123456')
user_3 = User.create!(first_name: 'Leah', last_name: 'Sadoun',email: 'leah@gmail.com', password: '123456')
user_4 = User.create!(first_name: 'Test', last_name: 'Tester',email: 'maximiliasn@vondelog.com', password: '123456')

sport = Sport.create!(name: 'Soccer', picture: 'Soccer.png')
sport_2 = Sport.create!(name: 'Bowling', picture:'Bowling.png')
sport_3 = Sport.create!(name: 'Tennis', picture:'Tennis.png')

sport_4 = Sport.create!(name: 'Basketball', picture:'Basketball.png')
sport_5 = Sport.create!(name: 'Beach-Volley', picture:'Beach-volley.png')
sport_6 = Sport.create!(name: 'Ping Pong', picture:'Ping-pong.png')

sport_7 = Sport.create!(name: 'Football', picture:'Football.png')
sport_8 = Sport.create!(name: 'Billiard', picture:'Pool.png')
sport_9 = Sport.create!(name: 'Volley-ball', picture:'Volley-1.png')


event = Event.create!(
  date: Time.now,
  sport_id: sport.id,
  user_id: user_1.id,
  address: "Chaim Levanon St 62, Tel Aviv-Yafo",
  capacity: 10,
  duration: 1,
  longitude: 32.0574457,
  latitude: 34.7346472,
  city: "Tel Aviv"
)
event_2 = Event.create!(
  date: Time.now,
  sport_id: sport_2.id,
  user_id: user_2.id,
  address: "Hatayasim 24, Tel Aviv-Yafo",
  capacity: 10,
  duration: 1,
  longitude: 32.057315,
  latitude: 34.8026763,
  city: "Tel Aviv"
)

event_3 = Event.create!(
  date: Time.now,
  sport_id: sport.id,
  user_id: user_3.id,
  address: "HaLohamim 1, Tel Aviv-Yafo",
  capacity: 10,
  duration: 1,
  longitude: 32.0364865,
  latitude: 34.7594088,
  city: "Tel Aviv"
  )


event_4 = Event.create!(
  date: Time.now,
  sport_id: sport_8.id,
  user_id: user_2.id,
  address: "Rokach Blvd 2, Tel Aviv-Yafo",
  capacity: 2,
  duration: 1,
  longitude: 32.0876577,
  latitude: 34.7652809,
  city: "Tel Aviv"
  )

event_5 = Event.create!(
  date: Time.now,
  sport_id: sport_8.id,
  user_id: user_1.id,
  address: "Ed Koch St 6, Tel Aviv-Yafo",
  capacity: 2,
  duration: 1,
  longitude: 32.0565675,
  latitude: 34.7529409,
  city: "Tel Aviv"
  )

event_6 = Event.create!(
  date: Time.now,
  sport_id: sport_8.id,
  user_id: user_2.id,
  address: "ben yehuda 32, Tel Aviv-Yafo",
  capacity: 4,
  duration: 1,
  longitude: 32.0764839,
  latitude: 34.7689215,
  city: "Tel Aviv"
  )


event_7 = Event.create!(
  date: Time.now,
  sport_id: sport_5.id,
  user_id: user_2.id,
  address: "Frishman Beach, Tel Aviv-Yafo",
  capacity: 6,
  duration: 2,
  longitude: 32.0801657,
  latitude: 34.6967588,
  city: "Tel Aviv"
  )

event_8 = Event.create!(
  date: Time.now,
  sport_id: sport_5.id,
  user_id: user_1.id,
  address: "Hatayasim 34, Tel Aviv-Yafo",
  capacity: 6,
  duration: 4,
  longitude: 32.0827656,
  latitude: 34.7324023,
  city: "Tel Aviv"
  )

event_9 = Event.create!(
  date:  (Time.now + 7.days + 7.hours),
  sport_id: sport.id,
  user_id: user_1.id,
  address: "Ed Koch St 1, Tel Aviv-Yafo",
  capacity: 8,
  duration: 3,
  longitude: 32.0375839,
  latitude: 34.7569016,
  city: "Tel Aviv"
  )



event_10 = Event.create!(
  date:  (Time.now + 7.days + 5.hours),
  sport_id: sport.id,
  user_id: user_1.id,
  address: "Chaim Levanon St 12, Tel Aviv-Yafo",
  capacity: 9,
  duration: 2,
  longitude: 32.1042459,
  latitude: 34.7986467,
  city: "Tel Aviv"
  )


event_11 = Event.create!(
  date:  (Time.now + 6.days + 7.hours),
  sport_id: sport.id,
  user_id: user_1.id,
  address: "Ben Yehuda 1, Tel Aviv-Yafo",
  capacity: 10,
  duration: 4,
  longitude: 32.073308,
  latitude: 34.7681475,
  city: "Tel Aviv"
  )



event_12 = Event.create!(
  date:  (Time.now + 8.days + 5.hours),
  sport_id: sport.id,
  user_id: user_1.id,
  address: "PLummer Square",
  capacity: 11,
  duration: 2,
  longitude: 32.0974422,
  latitude: 34.7665532,
  city: "Tel Aviv"
  )




event_12 = Event.create!(
  date:  (Time.now + 10.days + 7.hours),
  sport_id: sport.id,
  user_id: user_1.id,
  address: "HaLohamim 45, Tel Aviv-Yafo",
  capacity: 13,
  duration: 2,
  longitude: 32.0337687,
  latitude: 34.7701045,
  city: "Tel Aviv"
  )

  booking_1 = Booking.create!(
    user_id: user_2.id,
    event_id: event_2.id
    )

  booking_2 = Booking.create!(
    user_id: user_3.id,
    event_id: event_6.id
    )

  booking_3 = Booking.create!(
    user_id: user_1.id,
    event_id: event_8.id
    )

  booking_4 = Booking.create!(
    user_id: user_1.id,
    event_id: event_6.id
    )


  message_1 = Message.create!(
  content: "Hello",
  chat_room: chat_room,
  user: user_2
)
message_2 = Message.create!(
  content: "Hey",
  chat_room: chat_room,
  user: user_1
)
message_3 = Message.create!(
  content: "Yo",
  chat_room: chat_room,
  user: user_1
)
puts "Seeds created"
