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
  password: "Welcome@1",
  username: Faker::Games::Fallout.character,
  first_name: 'Joyce',
  last_name: 'Kwon',
  position: 'Engineer',
  location: 'New York',
},
{
  email: Faker::Name.unique.first_name.downcase.strip + '@gmail.com',
  password: "Welcome@1",
  username: Faker::Games::Fallout.character,
  first_name: Faker::Name.unique.first_name,
  last_name: Faker::Name.unique.last_name,
  position: Faker::Job.field,
  location: Faker::Nation.capital_city,
},
{
  email: Faker::Name.unique.first_name.downcase.strip + '@gmail.com',
  password: "Welcome@1",
  username: Faker::Games::Fallout.character,
  first_name: Faker::Name.unique.first_name,
  last_name: Faker::Name.unique.last_name,
  position: Faker::Job.field,
  location: Faker::Nation.capital_city,
}])
puts "created users"

puts "destroy posts"
Post.destroy_all
puts "creating posts"

posts = [
  'Go to the post office, Respond to emails, Build API, Take out trash',
  'Design logo, Make prototype, Get Leo food, Pay phone bill',
  'Read Harry Potter, Study for dark magic potion class final, Memorize spells, Practice for the Quidditch'
]

posts.each do |post|
  user_id = User.all.sample.id
  Post.create(user_id: user_id, content: post)
end

puts "created posts"