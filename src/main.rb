require_relative 'game'
require_relative 'player'
require_relative 'question'

games = []
puts "Would you like to play a game?"
response = gets.chomp

games.unshift(Game.new)

current_game = games.first

while current_game.winner == nil

  current_game.current_round = current_game.current_round + 1
  puts "-+-+-+- Round #{current_game.current_round} -+-+-+-"
  puts "#{current_game.current_player.name}, it's your turn and you have #{current_game.current_player.lives.to_s} lives."
  current_game.ask_question

  current_game.answer_question

  current_game.current_player.lives = current_game.current_player.lives - 1 unless current_game.questions.first.answer.to_i == current_game.questions.first.response.to_i

  current_game.winner = current_game.on_deck.name unless current_game.current_player.lives > 0
end

games.each do |element, index|
  puts "#{element.winner} won game #{games.length.to_i - index.to_i} after #{element.current_round} rounds."
end