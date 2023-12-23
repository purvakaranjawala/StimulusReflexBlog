# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Player.destroy_all
Team.destroy_all
Contract.destroy_all

players = Player.create([{ name: 'Jones Smith', age: 22 }, { name: 'Harsie Holes', age: 23 },
                         { name: 'Dennis Hale', age: 25 }, { name: 'Derek Joon', age: 26},
                         { name: 'Jonny Junior', age: 29 }, { name: 'Tonny Stark', age: 30 }, { name: 'Jeff Jones', age: 21 }])

teams = Team.create([{name: 'Mumbai Indians'}, { name: 'Chennai Superkings' }, {name: 'Delhi daredevils'}, {name: 'kolkata knightriders'} ])


Contract.create!([{team_id: teams.first, player_id: players.first, term: 1}, {team_id: teams.second, player_id: players.second, term: 2},
  {team_id: teams.second, player_id: players.third, term: 2}, {team_id: teams.first, player_id: players.fourth, term: 3},
  {team_id: teams.second, player_id: players.last, term: 1}, {team_id: teams.second, player_id: players.last(2).first, term: 4}
])
