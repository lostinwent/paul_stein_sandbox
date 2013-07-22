# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Product.delete_all

100.times do |n|
  Product.create!(
    name: "#{Faker::Lorem.word}".titleize,
    description: Faker::Lorem.sentence(2),
    price_in_cents: [100, 200, 500, 1000, 2500, 5000, 10000, 20000].sample,
    on_sale: [true, false].sample
  )
end
