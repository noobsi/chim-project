# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(
    user_name: 'admin',
    email: 'admin@123.com', 
    password: '123456', 
    password_confirmation: '123456',
    user_role: 1
  )
user.save!