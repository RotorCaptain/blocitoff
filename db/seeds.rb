require 'faker'

#Create Users
10.times do
  user = User.new(
          name:         Faker::Name.name,
          email:        Faker::Internet.email,
          password:     Faker::Lorem.characters(10) 
  )
  user.skip_confirmation!
  user.save!
end


user = User.first
  user.skip_confirmation!
  user.update_attributes!(
    email: 'rotorcaptain@hotmail.com',
    password: 'cyclic01',
    name: 'Chris'
  )
  
users = User.all  

50.times do
  Item.create!(
      user:         users.sample,
      name:         Faker::Lorem.sentence,
      created_at:   Faker::Date.backward(7)

  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
