# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

players = [
  { first_name: 'Alex', last_name: 'Todoran' },
  { first_name: 'Rares', last_name: 'Pascan' },
  { first_name: 'Catalin', last_name: 'Purda' }
]

Player.create(players)

game = Game.new

Player.all.each do |player|
  game.participants.new(player_id: player.id)
end

game.save
