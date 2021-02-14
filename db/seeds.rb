# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

if Player.count == 0
    path = File.join(File.dirname(__FILE__), "./data/players.json")
  players = JSON.parse(File.read(path))
  players.each do |player|
    Player.create!(player)
  end
  puts "Players are seeded"
end

if Game.count == 0
    path = File.join(File.dirname(__FILE__), "./data/2020_game_logs.json")
  games = JSON.parse(File.read(path))
  games.each do |game|
    Game.create!(game)
  end
  puts "Games are seeded"
end

if Team.count == 0
    path = File.join(File.dirname(__FILE__), "./data/team_stats.json")
  teams = JSON.parse(File.read(path))
  teams.each do |team|
    Team.create!(team)
  end
  puts "Teams are seeded"
end