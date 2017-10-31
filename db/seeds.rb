# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Lesson.destroy_all


lessons = Lesson.create([{ instrument: 'guitar' }, { date: '10/02/1994' }, { time: '3:00 PM' }, { location: 'panama city' }, { user_id: 2 }])


