# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "securerandom"

User.create!(username: 'hadson', email: 'admin@phathoth.com', password: 'password', confirmed_at: Time.now)

99.times do |n|
  username = SecureRandom.urlsafe_base64(10)
  email = "example-#{n+1}@plathoth.com"
  password = "password"
  User.create!(username: username,
               email: email,
               password:              password,
               confirmed_at: Time.now)
end

users = User.order(:created_at).take(6)
50.times do |n|
  title = "phathothのイメージ#{n+1}"
  summary = Faker::Lorem.sentence(5)
  view = rand(10000)
  media = File.join(Rails.root, "db/fixtures/00.jpg")
  users.each { |user| user.contents.create!(title: title,
                                            summary: summary,
                                            view: view,
                                            media: File.new(media))
              }
end
