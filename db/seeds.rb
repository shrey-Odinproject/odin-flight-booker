# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
Flight.destroy_all

airports = Airport.create([
  { code: 'LON' },
  { code: 'NYC' }
])

p "created #{Airport.count} airports"

Flight.create([
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 3, start: DateTime.parse("2022-11-22 09:00")},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 9, start: DateTime.parse("2022-12-25 11:00")},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 7, start: DateTime.parse("2022-11-22 09:00")},
  { departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, duration: 6, start: DateTime.parse("2022-11-22 09:00")},
  { departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, duration: 8, start: DateTime.parse("2022-12-25 11:00")},
  { departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, duration: 5, start: DateTime.parse("2022-12-25 11:00")}
])
p "created #{Flight.count} flights"
