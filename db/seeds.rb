# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "destroy users"
User.destroy_all
puts "creating users"
User.create!([{
  email: 'joyceyskwon@gmail.com',
  password: "1234",
  username: Faker::Games::Fallout.character,
  first_name: 'Joyce',
  last_name: 'Kwon',
  position: 'Engineer',
  location: 'New York',
},
{
  email: Faker::Name.unique.first_name.downcase.strip + '@gmail.com',
  password: "1234",
  username: Faker::Games::Fallout.character,
  first_name: Faker::Name.unique.first_name,
  last_name: Faker::Name.unique.last_name,
  position: Faker::Job.field,
  location: Faker::Nation.capital_city,
},
{
  email: Faker::Name.unique.first_name.downcase.strip + '@gmail.com',
  password: "1234",
  username: Faker::Games::Fallout.character,
  first_name: Faker::Name.unique.first_name,
  last_name: Faker::Name.unique.last_name,
  position: Faker::Job.field,
  location: Faker::Nation.capital_city,
}])
puts "created users"