require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airline.destroy_all
Review.destroy_all

10.times do
  Airline.create({
    name: "The #{Faker::Hipster.word} #{Faker::Hipster.word}",
    image_url: 'https://images.unsplash.com/photo-1571306603861-20c055ab2e5c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80'
  })
end

Review.create([
  {
    title: 'Great airline',
    description: 'I had a great flight',
    score: 5,
    airline: Airline.first
  },
  {
    title: 'Bad airline',
    description: 'Worst flight ever',
    score: 1,
    airline: Airline.first
  }
])
