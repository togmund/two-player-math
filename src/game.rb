require 'player.rb'
require 'question.rb'
# Class Declaration
class Game
  attr_accessor :current_player, :on_deck, :current_round, :winner

  def initialize()
    puts "What's your name?"
    current_name = gets.chomp
    @current_player = Player.new(current_name)
    puts "Next player?"
    current_name = gets.chomp
  end

end

# Tests

gameOne = Game.new.call()
puts GameOne.current_player
puts GameOne.on_deck