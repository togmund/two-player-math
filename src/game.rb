require_relative 'player'
require_relative 'question'

# Class Declaration
class Game
  attr_accessor :current_player, :on_deck, :current_round, :winner
  
  def initialize()
    puts "-+-+-+- New game -+-+-+-"
    puts "Player one's name?"
    player_one_name = gets.chomp
    @current_player = Player.new(player_one_name)
    puts "Player two's name?"
    player_two_name = gets.chomp
    @on_deck = Player.new(player_two_name)
    @winner = nil
  end

end

# Tests
# gameOne = Game.new
# puts gameOne.current_player.name
# puts gameOne.on_deck.name