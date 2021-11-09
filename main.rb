require './game'
require './player'
require './questions'

puts "Player 1 name: "
player1 = $stdin.gets.chomp

puts "Player 2 name: "
player2 = $stdin.gets.chomp

new_game = Game.new(player1, player2)

new_game.start