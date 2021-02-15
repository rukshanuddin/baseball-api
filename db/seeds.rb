# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'rest-client'
if TeamStat.count.zero?
  path = File.join(File.dirname(__FILE__), './data/teams.json')
  teams = JSON.parse(File.read(path))
  teams.each do |team|
    TeamStat.create!(team)
  end
  puts 'Team stats are seeded'
end

if PlayerStat.count.zero?
  path = File.join(File.dirname(__FILE__), './data/players.json')
  players = JSON.parse(File.read(path))
  players.each do |player|
    t = PlayerStat.create
    t.name = player['name']

    t.team_stat = TeamStat.where(team_name: player['team']).first
    t.team_name = player['team']
    t.G = player['G']
    t.PA = player['PA']
    t.HR = player['HR']
    t.R = player['R']
    t.RBI = player['RBI']
    t.SB = player['SB']
    t.BB = player['BB']
    t.K = player['K']
    t.ISO = player['ISO']
    t.BABIP = player['BABIP']
    t.AVG = player['AVG']
    t.OBP = player['OBP']
    t.SLG = player['SLG']
    t.wOBA = player['wOBA']
    t.wRC = player['wRC']
    t.EV = player['EV']
    t.BsR = player['BsR']
    t.Off = player['Off']
    t.Def = player['Def']
    t.WAR = player['WAR']
    t.playerid = player['playerid']

    t.save
    # player.team_id = Team.where(team: players["team"])
    # Player.create!(player)
  end
  puts 'Player Stats are seeded'
end

if Game.count.zero?
  path = File.join(File.dirname(__FILE__), './data/2020_game_logs.json')
  games = JSON.parse(File.read(path))
  games.each do |game|
    Game.create!(game)
  end
  puts 'Games are seeded'
end

if Team.count.zero?
  path = File.join(File.dirname(__FILE__), './seeds/teams.json')
  teams = JSON.parse(File.read(path))
  teams.each do |team|
    Team.create!(team)
  end
  puts 'Teams are seeded'
end

if Player.count.zero?
  path = File.join(File.dirname(__FILE__), './seeds/players.json')
  players = JSON.parse(File.read(path))
  players.each do |player|
    t = Player.create

    t.firstName = player['firstName']
    t.lastName = player['lastName']
    t.number = player['number']
    t.country = player['country']
    t.teamID = player['teamID']
    t.team = Team.where(teamID: player['teamID']).first
    t.weight = player['weight']
    t.position = player['position']
    t.sport = player['sport']
    t.playerID = player['playerID']
    t.height = player['height']
    t.videos = 'https://areyouwatchingthis.com/api/assets.json?playerID=#' + player['playerID'].to_s
    t.image = 'https://areyouwatchingthis.com/images/players/' + player['playerID'].to_s + '.png'

    t.save
    #   Player.create!(player)
  end
  puts 'Players are seeded'
end
