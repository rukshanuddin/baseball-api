# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Player.count == 0
    path = File.join(File.dirname(__FILE__), "./data/players.json")
  players = JSON.parse(File.read(path))
  players.each do |player|
    Player.create!(player)
  end
  puts "Players are seeded"
end