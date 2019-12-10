require_relative 'game'
require_relative 'player'
require_relative 'question'

games = []
puts "Would you like to play a game?"
response = gets.chomp

games.unshift(Game.new)

while games.first.winner == nil
  puts "I asked a question"
  puts "I got an answer"
  puts "Someone won"
  games.first.winner = games.first.current_player.name
end

games.each do |element, index|
  puts "#{element.winner} won game #{games.length.to_i - index.to_i}"
end