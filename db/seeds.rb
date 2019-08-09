# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodUnit.destroy_all

FoodUnit.create!([{
  food: "canned beans",
  itemNumber: 2,
  list_id: 1,
  faved: true
  }])
