# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# sectors = [
#   name: 'name of sector',
#   description: 'description of sector',
#   sector_photo_file_name: ''
# ]
#
# created_sectors = Sector.create(sectors)
#
#
#
# brands = [
#   name: 'name of brand',
#   url: 'www.url.com',
#   description: 'the description',
#   brand_photo_file_name: '',
#   logo_for_brand_file_name: ''
# ]
#
# created_brands = Brand.create(brands)
#
# created_brands.each do |brand|
#   sector = Sector.find_by(name: brand.sector_id)
#   brand.sector = sector
#   brand.save
# end

Sector.create(en_name: "Marine")
Sector.create(en_name: "Automotive")
Sector.create(en_name: "Aviation")
Sector.create(en_name: "Real Estate")
Sector.create(en_name: "Entertainment and Leisure")
Sector.create(en_name: "Fashion and Accessories")
Sector.create(en_name: "Media")
Sector.create(en_name: "Technology")




#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
