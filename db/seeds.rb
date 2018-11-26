

Booking.destroy_all
Event.destroy_all
Sport.destroy_all
User.destroy_all


def random_user
 user = User.all.sample
end

user_1 = User.create!(email: 'alanglam@gmail.com', password: '123456')
user_2 = User.create!(email: 'moshe@gmail.com', password: '123456')
user_3 = User.create!(email: 'leah@gmail.com', password: '123456')

sport = Sport.create!(name: 'Soccer')
sport_2 = Sport.create!(name: 'Basketball')
sport_3 = Sport.create!(name: 'Billiard')
sport_4 = Sport.create!(name: 'Volley-ball')
sport_5 = Sport.create!(name: 'Beach-Volley')
sport_6 = Sport.create!(name: 'Bowling')
sport_7 = Sport.create!(name: 'Football')
sport_8 = Sport.create!(name: 'Tennis')
sport_9 = Sport.create!(name: 'Ping Pong')

event = Event.create!(
  date: Date.today,
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
  date: Date.today,
  sport_id: sport_2.id,
  user_id: user_2.id,
  address: "Derech Hatayasim 24 Tel Aviv",
  capacity: 10,
  duration: 1,
  longitude: 32.057315,
  latitude: 34.8026763,
  city: "Tel Aviv"
)

event_3 = Event.create!(
  date: Date.today,
  sport_id: sport.id,
  user_id: user_3.id,
  address: "HaLohamim, Tel Aviv-Yafo",
  capacity: 10,
  duration: 1,
  longitude: 32.035239,
  latitude: 34.7659962,
  city: "Tel Aviv"
  )

event_4 = Event.create!(
  date: Date.today,
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
  date: Date.today,
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
  date: Date.today,
  sport_id: sport_8.id,
  user_id: user_2.id,
  address: "Open Tennis Court, Tel Aviv-Yafo",
  capacity: 4,
  duration: 1,
  longitude: 32.0764839,
  latitude: 34.7689215,
  city: "Tel Aviv"
  )


event_7 = Event.create!(
  date: Date.today,
  sport_id: sport_5.id,
  user_id: user_2.id,
  address: "Frishman Beach, Tel Aviv-Yafo",
  capacity: 6,
  duration: 1,
  longitude: 32.0801657,
  latitude: 34.6967588,
  city: "Tel Aviv"
  )

event_8 = Event.create!(
  date: Date.today,
  sport_id: sport_5.id,
  user_id: user_1.id,
  address: "Gordon Beach, Tel Aviv-Yafo",
  capacity: 6,
  duration: 1,
  longitude: 32.0827656,
  latitude: 34.7324023,
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

