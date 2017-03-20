# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

supermoon_brand = Brand.create!(
  name: "Supermoon Lacquer",
  website: "https://www.thehowlingboutique.com/sml/",
  maker: "Mardi Carruth",
  country: "US",
  status: :active,
  instagram: "https://www.instagram.com/thehowlingboutique/",
  facebook_page: "https://www.facebook.com/TheHowlingBoutique",
)

supermoon_collection = Collection.create!(
  name: "Ready to Launch",
  year: 2016,
  brand: supermoon_brand,
)

supermoon_cosmic_dust = NailPolish.create!(
  name: "Cosmic Dust",
  collection: supermoon_collection,
  brand: supermoon_brand
)

supermoon_galactic_halo = NailPolish.create!(
  name: "Galactic Halo",
  collection: supermoon_collection,
  brand: supermoon_brand
)
