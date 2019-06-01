require 'faker'


10.times do |index|
  Trip.create!(
  
    name: "Going " + Faker::Compass.direction,
    description: Faker::Lorem.sentence(2),
    user_id: 1
  )
end
p "Created #{Trip.count} trips." 

10.times do |index|
  Location.create!(
    location_name: Faker::TvShows::TwinPeaks.location,
    days: Faker::Number.between(1, 7),
    activity: "We will be " + Faker::Hacker.ingverb + " this day.",
    trip_id: 1
  )
end
p "Created #{Location.count} locations." 

i = 1
10.times do |index|
  Address.create!(
    # name: Faker::Address.community,
    lat: Faker::Address.latitude,
    long: Faker::Address.longitude,
    country: Faker::Address.country,
    street: Faker::Address.street_name,
    city: Faker::TvShows::GameOfThrones.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    location_id: i += 1
  )
end
p "Created #{Address.count} addresses." 