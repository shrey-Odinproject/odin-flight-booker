# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
Flight.destroy_all

a1=Airport.create(code:'NYC')
a2=Airport.create(code:'MUM')
a3=Airport.create(code:'LON')
a4=Airport.create(code:'SYD')
a5=Airport.create(code:'PAR')

p "created #{Airport.count} airports"

Flight.create(start: DateTime.parse("14/12/2022 08:00"), duration: 90, departure_airport_id: a2.id, arrival_airport_id: a5.id)
Flight.create(start: DateTime.parse("22/11/2022 20:00"), duration: 360, departure_airport_id: a1.id, arrival_airport_id: a3.id)
Flight.create(start: DateTime.parse("10/07/2022 18:30"), duration: 60, departure_airport_id: a4.id, arrival_airport_id: a2.id)
Flight.create(start: DateTime.parse("17/04/2022 09:00"), duration: 120, departure_airport_id: a3.id, arrival_airport_id: a5.id)
Flight.create(start: DateTime.parse("03/03/2022 16:15"), duration: 270, departure_airport_id: a5.id, arrival_airport_id: a4.id)
Flight.create(start: DateTime.parse("18/09/2022 13:20"), duration: 600, departure_airport_id: a2.id, arrival_airport_id: a1.id)

p "created #{Flight.count} flights"
