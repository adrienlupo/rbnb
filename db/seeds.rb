# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

User.create(email: 'test@gmail.com', password: "1234567", password_confirmation: "1234567")

30.times do
  Motorcycle.create!(
    title: Faker::Vehicle.version,
    user: User.all.first,
    capacity: Faker::Number.number(digits: 3),
    category: Faker::Vehicle.fuel_type,
    description: Faker::Lorem.paragraph(sentence_count: 8),
    moto_picture_url: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Norton_Motorcycle.jpg",
    price: Faker::Number.between(from: 59, to: 250)
  )
end
