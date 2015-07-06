require 'faker'
 
 10.times do 
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end


# Create an admin user
admin = User.new(
    name: 'admin user',
    email: 'example@admin.com',
    password: 'helloworld'
    )
  admin.skip_confirmation!
  admin.save!


users = User.all

# Create a user
# Create a collaborator ?

 # Create Wikis

 5.times do
  Wiki.create!(
     title:  Faker::Lorem.sentence,
     body:  Faker::Lorem.paragraph,
     private: 'false',
     user: admin
   )
 end

 wikis = Wiki.all #problem here - maybe lack of wiki controller. try again after making controller

 puts "Seed finished"
 puts "#{Wiki.count} wikis created"
 puts "#{User.count} users created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

      