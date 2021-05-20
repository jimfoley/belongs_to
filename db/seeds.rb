# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SeedReport.for_model Author do
  Author.find_or_create_by!(name: 'James Foley')
end

SeedReport.for_model Book do
  Book.find_or_create_by!(name: 'Gone With The Wind', author: Author.first)
end