require_relative 'player'
require_relative 'question'

# Class Declaration
class Game
  attr_accessor :current_player, :on_deck, :current_round, :winner, :questions
  
  def initialize()
    puts "-+-+-+- New game -+-+-+-"
    puts "Player one's name?"
    player_one_name = gets.chomp
    @current_player = Player.new(player_one_name)
    puts "Player two's name?"
    player_two_name = gets.chomp
    @on_deck = Player.new(player_two_name)

    @current_round = 0
    @winner = nil
    @questions = []
  end

  def ask_question
    num1 = rand(21)
    num2 = rand(21)
    operator_list = ["+", "-", "*", "/", "**", "%"]
    operator = operator_list[rand(6)]
    @questions.unshift(Question.new(num1, operator, num2, current_player, current_round))
  end

  def answer_question
    response = gets.chomp
    @questions.first.response = response
  end
end

# Tests
# gameOne = Game.new
# puts gameOne.current_player.name
# puts gameOne.on_deck.name