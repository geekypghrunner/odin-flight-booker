# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(:code => "PIT")
Airport.create(:code => "SFO")
Airport.create(:code => "NYC")
Airport.create(:code => "MCO")
Airport.create(:code => "DCA")

Flight.create(:from_airport_id => 1, :to_airport_id => 2, :departure => "2018-02-11", :duration => "4 hours")
Flight.create(:from_airport_id => 2, :to_airport_id => 3, :departure => "2018-03-11", :duration => "4 hours")
Flight.create(:from_airport_id => 3, :to_airport_id => 4, :departure => "2018-04-11", :duration => "4 hours")
Flight.create(:from_airport_id => 4, :to_airport_id => 5, :departure => "2018-05-11", :duration => "4 hours")
Flight.create(:from_airport_id => 5, :to_airport_id => 1, :departure => "2018-06-11", :duration => "4 hours")