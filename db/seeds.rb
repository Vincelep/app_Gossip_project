# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


10.times do |index|
	citi = City.create!(zip_code: Faker::Address.zip)
end

10.times do |index|
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.between(18, 99), city_id: (rand(City.first.id..City.last.id)))
end

10.times do |index|
	gossip = Gossip.create!(title: Faker::Science.element, content: Faker::HeyArnold.quote, user_id: (rand(User.first.id..User.last.id)))
end

15.times	do |index|
	tag = Tag.create!(title: Faker::Vehicle.make,)
end

15.times do |index|
	gt = GossipTag.create!(gossip_id: (rand(Gossip.first.id..Gossip.last.id)), tag_id: (rand(Tag.first.id..Tag.last.id)))
end
