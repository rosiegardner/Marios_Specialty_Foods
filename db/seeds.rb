# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all
User.destroy_all

marios_admin = User.create!(:email => 'mariosadmin@food.com', :password => 'mariosfoodadmin123', :admin => true)
marios_user = User.create!(:email => 'mariosuser@food.com', :password => 'mariosfooduser456')
product_id_array = []
50.times do |index|
  Product.create!(name: Faker::Food.fruits, cost: Faker::Number.between(from: 1, to: 10,), country_of_origin: Faker::Address.country)
    5.times do |index|
      Review.create!(author: Faker::Name.name, rating: Faker::Number.between(from: 1, to: 5), content_body: Faker::Hipster.paragraph_by_chars(characters: 250, supplemental: false), product_id: Product.last.id)
    end
end

p product_id_array
p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
  

