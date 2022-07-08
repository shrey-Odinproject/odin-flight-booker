# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
Flight.destroy_all

a1 = Airport.create(code: 'NYC')
a2 = Airport.create(code: 'MUM')
a3 = Airport.create(code: 'LON')
a4 = Airport.create(code: 'SYD')
a5 = Airport.create(code: 'PAR')

airports = [a1, a2, a3, a4, a5]
dates = [DateTime.parse("14/12/2022 08:00"), DateTime.parse("22/11/2022 20:00"), DateTime.parse("10/07/2022 18:30"),
         DateTime.parse("17/04/2022 09:00"), DateTime.parse("03/03/2022 16:15")]
p "created #{Airport.count} airports"

20.times do
  port1, port2 = airports.sample(2)
  Flight.create(start: dates.sample,
                duration: rand(1..10), departure_airport_id: port1.id, arrival_airport_id: port2.id)
end

p "created #{Flight.count} flights"
