# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Destination.destroy_all
Way.destroy_all

starbucks = Destination.create(name: "StarBucks")
mall = Destination.create(name: "Mall")
dsw = Destination.create(name: "DSW")

Way.create(color: "Blue", description: "This route will at StarBucks. ", destination_id: starbucks.id)


