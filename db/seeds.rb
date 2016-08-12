# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_admin = User.new
user_admin.email = 'admin@test.com'
user_admin.role = 'admin'
user_admin.password = 'password'
user_admin.password_confirmation = 'password'
user_admin.save

user_buyer = User.new
user_buyer.email = 'buyer@test.com'
user_buyer.role = 'buyer'
user_buyer.password = 'password'
user_buyer.password_confirmation = 'password'
user_buyer.save

buyer_profile = Profile.new
buyer_profile.user_id = user_buyer.id
buyer_profile.name = 'Buyer Guy'
buyer_profile.save

user_seller = User.new
user_seller.email = 'seller@test.com'
user_seller.role = 'seller'
user_seller.password = 'password'
user_seller.password_confirmation = 'password'
user_seller.save

seller_storefront = Storefront.new
seller_storefront.user_id = user_seller.id
seller_storefront.name = 'Seller Store'
seller_storefront.info = 'Info for test seller store.'
seller_storefront.save

seller_product = Product.new
seller_product.name = 'Carrot'
seller_product.quantity = 50
seller_product.cost = 1
seller_product.info = 'Good for your eyes!'
seller_product.storefront_id = seller_storefront.id
seller_product.save
