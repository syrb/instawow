# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create!(name: "Kudoz", url: "wwww.kudoz.com", tagline: "Tinder for job search")
Product.create!(name: "uSlide", url: "wwww.uslide.io", tagline: "YouTube sucks for education")
Product.create!(name: "Medpics", url: "wwww.medpics.com", tagline: "Share your diagnostics")
