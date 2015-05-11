# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.find_or_initialize_by(email:"admin@gmail.com").update_attributes(password:"a12345678")
User.find_or_initialize_by(email:"user@gmail.com").update_attributes(password:"a12345678")

User.find_by(email:'admin@gmail.com').add_role :admin if User.find_by(email:'admin@gmail.com')
User.find_by(email:'user@gmail.com').add_role :user if User.find_by(email:'user@gmail.com')