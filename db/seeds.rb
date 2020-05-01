# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(title: "Kafka on The Shore", author: "Haruki Murakami", pages: 365, rating: 5)
Book.create(title: "The Goblet of Fire", author: "J.K Rowling", pages: 368, rating: 3)
Book.create(title: "100 Years of Solitude", author: "Gabriel Garcia Marquez", pages: 288, rating: 5)
Book.create(title: "Cat's Cradle", author: "Kurt Vonnegut", pages: 248, rating: 4)