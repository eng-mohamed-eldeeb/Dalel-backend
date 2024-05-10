# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

era = Era.create(name: "Islamic")

sub_era = SubEra.create(arabic_name: "Rashidun",english_name: "adsf" , era: era, arabic_info: "asdf", english_info: "asdf")

event = Event.create(type: "War", arabic_title: "معركه ابو بكر", english_title: "Battle of Badr", start_date: "624-03-13", sub_era: sub_era)

user = User.create(email: "mo@mo.mo", password: "momomo", name: "mohamed Eldeeb")


# product = Product.create(type: 1, price: 100, arabic_title: "حياه ابو بكر", english_title: "The Life of Abu Bakr", arabic_description: "The Life of Abu Bakr", english_description: "The Life of Abu Bakr", era: era, sub_era_id: sub_era.id, character: character, event: event)
