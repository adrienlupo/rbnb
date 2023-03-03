# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

Motorcycle.destroy_all
User.destroy_all

User.create(email: 'test@gmail.com', password: "1234567", password_confirmation: "1234567")

puts "Getting Motorcycles Data"

  moto1 = Motorcycle.new(
    title: "bking marseillais",
    user: User.all.first,
    capacity: "1340cm3",
    category: "road",
    description: Faker::Lorem.paragraph(sentence_count: 8),
    available_dates: Faker::Date.in_date_period,
    address: "10 Rue Haxo, Marseille",
    price: 298
  )
  moto1.photo.attach(io: File.open('./db/seed_pictures/pic1.jpg'), filename: 'pic1.jpg', content_type: 'image/jpg')
  moto1.save!

  moto2 = Motorcycle.new(
  title: "Gsx",
  user: User.all.first,
  capacity: "1400cm3",
  category: "road",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  available_dates: Faker::Date.in_date_period,
  address: "11 Rue Haxo, Marseille",
  price: 190
)
  moto2.photo.attach(io: File.open('./db/seed_pictures/pic2.jpg'), filename: 'pic2.jpg', content_type: 'image/jpg')
  moto2.save!

  moto3 = Motorcycle.new(
  title: "Gs",
  user: User.all.first,
  capacity: "500cm3",
  category: "road",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  available_dates: Faker::Date.in_date_period,
  address: "12 Rue Haxo, Marseille",
  price: 90
)
moto3.photo.attach(io: File.open('./db/seed_pictures/pic3.jpg'), filename: 'pic3.jpg', content_type: 'image/jpg')
moto3.save!

moto4 = Motorcycle.new(
  title: "R1",
  user: User.all.first,
  capacity: "1000cm3",
  category: "sport",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  available_dates: Faker::Date.in_date_period,
  address: "13 Rue Haxo, Marseille",
  price: 200
)
moto4.photo.attach(io: File.open('./db/seed_pictures/pic4.jpg'), filename: 'pic4.jpg', content_type: 'image/jpg')
moto4.save!

moto5 = Motorcycle.new(
  title: "S1000RR ",
  user: User.all.first,
  capacity: "1340cm3",
  category: "sport",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  available_dates: Faker::Date.in_date_period,
  address: "14 Rue Haxo, Marseille",
  price: 250
)
moto5.photo.attach(io: File.open('./db/seed_pictures/pic5.jpg'), filename: 'pic5.jpg', content_type: 'image/jpg')
moto5.save!

moto6 = Motorcycle.new(
  title: "KL",
  user: User.all.first,
  capacity: "650cm3",
  category: "trail",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  available_dates: Faker::Date.in_date_period,
  address: "15 Rue Haxo, Marseille",
  price: 80
)
moto6.photo.attach(io: File.open('./db/seed_pictures/pic6.jpg'), filename: 'pic6.jpg', content_type: 'image/jpg')
moto6.save!
