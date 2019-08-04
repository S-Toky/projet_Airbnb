# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

100.times do
	Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, adress: Faker::Address.zip)
end

100.times do
	Dog.create!(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, gender: Faker::Creature::Dog.gender)
end

100.times do
	Stroll.create!(name: Faker::Address.street_name)
end

10.times do
	City.create!(city_name: Faker::Address.city)
end