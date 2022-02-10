# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

50.times do
  City.create(city_name: Faker::Address.city)
end

50.times do
  Dog.create(name: Faker::Games::Pokemon.name, city: City.all.sample)
end

50.times do
  Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

10.times do
  Stroll.create(date: Faker::Date.between(from: '2020-09-23', to: '2022-02-10'), dog_id: rand(1..50), dogsitter_id: rand(1..50))
end
