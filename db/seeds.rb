# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.delete_all
Feed.delete_all

tag1 = Tag.create(title: 'plomberie')
tag2 = Tag.create(title: 'boulangerie')
tag3 = Tag.create(title: 'caté')

Random.rand(14).times do |idx|
  Feed.create(body: "#{idx} Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo #{idx}", title: "title #{idx}", place: "pas loin de #{idx}", price: Random.rand(2000), ref: "#{idx}_ref83_#{idx}", hours: Random.rand(100), tags: [tag2])
end

Feed.create(body: "une formation gratuite", title: "un titre de formation free", place: "Gagny", price: 0, ref: "#{Random.rand(9999)}_ref83_#{Random.rand(9999)}", hours: Random.rand(100), tags: [tag2, tag1])

Random.rand(20).times do |idx|
  Feed.create(body: "#{idx} Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo #{idx}", title: "title #{idx}", place: "pas loin de #{idx}", price: Random.rand(2000), ref: "#{idx}_ref83_#{idx}", hours: Random.rand(100), tags: [tag3, tag1])
end

Feed.create(body: "encore une formation gratuite !!", title: "Gratuit", place: "Neuilly-Plaissance", price: 0, ref: "#{Random.rand(9999)}_ref83_#{Random.rand(9999)}", hours: Random.rand(100), tags: [tag3])