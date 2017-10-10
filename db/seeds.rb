# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Admin", email: "admin@example.com")
User.create!(name: "Vice P", email: "vp@example.com")
23.times do |n|
  User.create!(name: "User #{n+3}", email: "user-#{n+3}@example.com")
end
users = User.all
user = User.first
following = users[2..5]
followers = users[2..20]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
