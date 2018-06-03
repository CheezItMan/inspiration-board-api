# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  board = Board.new name: Faker::Hobbit.location
  board.save
end

20.times do
  card = Card.new content: Faker::Hobbit.quote, title: Faker::Hobbit.character
  card.board = Board.all.sample
  card.save
end
