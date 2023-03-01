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


# 30.times do
#   Motorcycle.create!(
#     title: Faker::Vehicle.version,
#     user: User.all.first,
#     capacity: Faker::Number.number(digits: 3),
#     category: Faker::Vehicle.fuel_type,
#     description: Faker::Lorem.paragraph(sentence_count: 8),
#     moto_picture_url: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Norton_Motorcycle.jpg",
#     price: Faker::Number.between(from: 59, to: 250)
#   )
# end

# "----"


# def api_key
#   ENV["API_KEY"]
# end

puts "Getting Motorcycles Data"

def motorcycles_dataset
  motorcycles_db = []
  motorcycles_dataset = RestClient.get('https://api.api-ninjas.com/v1/motorcycles?make=kawasaki&model=ninja', headers={ 'X-Api-Key': 'UNVh/gYhvoXLpgbN94xaCQ==np4Bo2M2Y7ghXjde' })
end

motorcycles_array = JSON.parse(motorcycles_dataset)

motorcycles_array.each do |motorcycle|
  moto = Motorcycle.create!(
    title: "#{motorcycle['make']} - #{motorcycle['model']}",
    user: User.all.first,
    capacity: motorcycle["displacement"].to_i,
    category: motorcycle["type"],
    description: Faker::Lorem.paragraph(sentence_count: 8),
    price: Faker::Number.between(from: 59, to: 250),
    available_dates: Faker::Date.in_date_period,
    address: "21 Rue Haxo, Marseille"
  )
  moto.photo.attach(io: File.open('/Users/adrienlupo/code/adrienlupo/rbnb/db/seed_pictures/pic1.jpg'), filename: 'pic1.jpg', content_type: 'image/jpg')
end
