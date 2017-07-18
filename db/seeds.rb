# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

syrbain = User.create!(email: 'celliersyrbain@yahoo.fr', password: 'password')
seto = User.create!(email: 'syrbaincellier@gmail.com', password: 'password')

kudoz = Product.create!(user: syrbain, name: "Kudoz", url: "wwww.kudoz.com", tagline: "Tinder for job search", category: "tech")
Product.create!(user: syrbain, name: "uSlide", url: "wwww.uslide.io", tagline: "YouTube sucks for education", category: "education")
Product.create!(user: seto, name: "Medpics", url: "wwww.medpics.com", tagline: "Share your diagnostics", category: "tech")

# Upvotes
kudoz.upvotes.create! user: syrbain
kudoz.upvotes.create! user: seto
