User.destroy_all
Booking.destroy_all
Event.destroy_all
Sport.destroy_all

Sport.create!(name: "Basketball")


User.create!(email: 'alanglam@gmail.com', password: '123456')
User.create!(email: 'moshe@gmail.com', password: '123456')
User.create!(email: 'leah@gmail.com', password: '123456')

# Event.create!(sport_id: 1, date: Time.now, duration: 2, address: "wolfson", capacity: 10, user_id: 1, latitude: 32.057315, longitude: 34.8026763)


# Booking.create!(user_id: 1, event_id: 1)



puts "Created #{User.count} users!"
puts "Created #{Booking.count} bookings!"
puts "Created #{Event.count} events!"
puts "Created #{Sport.count} sports!"
