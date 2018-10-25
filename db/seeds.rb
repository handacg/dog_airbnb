# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |city|
  city = City.create!(city_name: Faker::Address.city)
end

10.times do |dog|
  dog = Dog.create!(name: Faker::Dog.name, race:Faker::Dog.breed, city_id: City.all.sample.id)
end

10.times do |dogsitter|
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

10.times do |stroll|
  stroll = Stroll.create!(date: Faker::Date.forward(23), dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id)
end
