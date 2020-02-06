# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities = ["Paris","London","Madrid","Tokyo","Kinshasa","Sydney","Parme","Chicago","Geneve","Berlin"]
  cities.each do |city|
    City.create(name:city)
end

100.times do
  Dogsitter.create!(pseudo: Faker::Name.first_name, city_id: City.all.sample.id)
  Dog.create!(nom: Faker::Creature::Dog.name,city_id: City.all.sample.id)
end

200.times do
  Stroll.create!(dogsitter_id:Dogsitter.all.sample.id,dog_id:Dog.all.sample.id)
end


