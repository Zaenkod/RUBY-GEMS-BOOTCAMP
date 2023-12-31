# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Cleaning database...'
Course.destroy_all
User.destroy_all

puts 'Creating user'
User.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456')

puts 'Creating 30 courses'
30.times do
  Course.create!(
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id
  )
end

puts 'Seeds Finished'
