# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
User.create([
  { email: 'user@example.com', password: 'welcome' },
  { email: 'admin@example.com', password: 'welcome' },
])

movies = Movie.create([
  { title: 'Star Wars', category: 'fantasy', text: 'Luke Skywalker, a young farmer from the desert planet of Tattooine, must save Princess Leia from the evil Darth Vader.' },
  { title: 'The Lord of the Rings', category: 'fantasy', text: 'Lord of the Rings based TV-series, set during the 3,441-year period, known as the Age of Númenor, or the Second Age.' },
  { title: 'Knives Out', category: 'comedy', text: 'A detective investigates the death of a patriarch of an eccentric, combative family.' }
])

Movie.find_each do |movie|
  movie.ratings.create([
    { user: User.first, movie: movie, value: rand(9) + 1 },
    { user: User.second, movie: movie, value: rand(9) + 1 }
  ])
end