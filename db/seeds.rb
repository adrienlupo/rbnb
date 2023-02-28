# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require "faker"

Motorcycle.create(
    title: Faker::Vehicle.version,
    capacity: Faker::Number.number(digits: 3),
    category: Faker::Vehicle.fuel_type,
    description:Faker::Lorem.paragraph(sentence_count: 8),
    moto_picture_url:
    price: Faker::Number.between(from: 59, to: 250)
    available_dates: Faker::Date.in_date_period
  )



require "json"
require "open-uri"



api_url = 'https://api.api-ninjas.com/v1/motorcycles?make=kawasaki&model=ninja'

motorcycle_db = URI.open(api_url, headers={'X-Api-Key': 'UNVh/gYhvoXLpgbN94xaCQ==np4Bo2M2Y7ghXjde'}).read

motorcycles = JSON.parse(motorcycles_db)


motorcycles.each do |motorcycle|
  Motorcycle.create(
    title: motorcycle["model"],
    capacity: motorcycle["displacement"],
    category: Faker::Vehicle.fuel_type,
    description:Faker::Lorem.paragraph(sentence_count: 8),
    moto_picture_url:
    price: Faker::Number.between(from: 59, to: 250)
    available_dates: Faker::Date.in_date_period
  )
  )


response = requests.get(api_url, headers={'X-Api-Key': 'UNVh/gYhvoXLpgbN94xaCQ==np4Bo2M2Y7ghXjde'})
if response.status_code == requests.codes.ok:
    print(response.text)
else:
    print("Error:", response.status_code, response.text)
