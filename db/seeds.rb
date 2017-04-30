# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

35.times do |product|
  Product.find_or_create_by(
    name: Faker::Commerce.product_name, 
    price: Faker::Commerce.price, 
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed mi ligula. Praesent ut diam nec metus efficitur rhoncus sed ac quam. Aenean a finibus risus. Vivamus efficitur pharetra hendrerit. Nulla mauris mi, molestie eget pretium nec, convallis eu erat."
    )
end

OrderStatus.create_with(id: 1).find_or_create_by(name: "Cart")
OrderStatus.create_with(id: 2).find_or_create_by(name: "Completed")
