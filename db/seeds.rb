# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.create!(
  make: 'Oldsmobile',
  model: 'Cutlass',
  year: 1980
)

Car.create!(
  make: 'Chevrolet',
  model: 'Chevette',
  year: 1981
)

Car.create!(
  make: 'Ford',
  model: 'F-Series',
  year: 1982
)

Car.create!(
  make: 'Chrysler',
  model: 'Minivan',
  year: 1984
)

Car.create!(
  make: 'Chevrolet',
  model: 'Celebrity',
  year: 1986
)

Car.create!(
  make: 'Ford',
  model: 'Escort',
  year: 1988
)
