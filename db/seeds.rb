# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lax = Airport.create(code: "LAX")
sfo = Airport.create(code: "SFO")
nyc = Airport.create(code: "NYC")
jfk = Airport.create(code: "JFK")

# Flights
lax_sfo = Flight.create(flight_from_id: lax.id, flight_to_id: sfo.id,start_date: Time.now,  duration: 1.hour)
lax_nyc = Flight.create(flight_from_id: lax.id, flight_to_id: nyc.id,start_date: 1.hour.from_now,  duration: 2.hours)
lax_jfk = Flight.create(flight_from_id: lax.id, flight_to_id: jfk.id,start_date: 2.hours.from_now, duration: 3.hours)
sfo_lax = Flight.create(flight_from_id: sfo.id, flight_to_id: lax.id,start_date: 1.hour.from_now,  duration: 1.hour)
sfo_nyc = Flight.create(flight_from_id: sfo.id, flight_to_id: nyc.id,start_date: 8.hours.from_now, duration: 2.hours)
sfo_jfk = Flight.create(flight_from_id: sfo.id, flight_to_id: jfk.id,start_date: 9.hours.from_now,  duration: 3.hours)
nyc_jfk = Flight.create(flight_from_id: lax.id, flight_to_id: sfo.id,start_date: 2.days.from_now,  duration: 1.hour)
nyc_sfo = Flight.create(flight_from_id: lax.id, flight_to_id: nyc.id,start_date: 3.days.from_now, duration: 2.hours)
jfk_lax = Flight.create(flight_from_id: jfk.id, flight_to_id: lax.id,start_date: 4.days.from_now, duration: 3.hours)