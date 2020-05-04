# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Destroying previous Books and Users'
Book.destroy_all
User.destroy_all
puts 'Books and Users destroyed'

book1 = Book.new(
    title: "Kafka on The Shore", 
    author: "Haruki Murakami",
    pages: 365,
    rating: 5)
    file = URI.open('https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1429638085l/4929.jpg')
    book1.photo.attach(io: file, filename: 'kafka.jpg', content_type: 'image/jpg')
    book1.save!
puts 'Book 1 created'

book2 = Book.new(
    title: "The Goblet of Fire", 
    author: "J.K Rowling", 
    pages: 368, 
    rating: 3)
    file = URI.open('https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1554006152l/6.jpg')
    book2.photo.attach(io: file, filename: 'goblet.jpg', content_type: 'image/jpg')
    book2.save!
puts 'Book 2 created'

book3 = Book.new(
    title: "100 Years of Solitude", 
    author: "Gabriel Garcia Marquez", 
    pages: 288, 
    rating: 5)
    file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81MI6+TpYkL.jpg')
    book3.photo.attach(io: file, filename: '100years.jpg', content_type: 'image/jpg')
    book3.save!
puts 'Book 3 created'    

book4 = Book.create(
    title: "Cat's Cradle", 
    author: "Kurt Vonnegut", 
    pages: 248, 
    rating: 4)
    file = URI.open('https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1457366240l/8699986._SX318_.jpg')
    book4.photo.attach(io: file, filename: 'cradle.jpg', content_type: 'image/jpg')
    book4.save!
puts 'Book 4 created'