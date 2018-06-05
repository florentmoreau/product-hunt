# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Product.destroy_all
#User.destroy_all

thomas = User.create!(email: "thomas@thomas", password: "testtest")
florent = User.create!(email: "florent@florent", password: "testtest")


kudoz = Product.create!(user: thomas, name: "kudoz", url: "http://kudoz.com", tagline: "tinder for job search", category: "tech")
Product.create!(user: florent, name: "uSlide", url: "http://uslide.com", tagline: "youtube sucks for education", category: "education")
medpics = Product.create!(user: florent, name: "medpics", url: "http://medpics.com", tagline: "Share your diagnostics", category: "tech")

kudoz.upvotes.create! user: thomas
kudoz.upvotes.create! user: florent
medpics.upvotes.create! user: florent
