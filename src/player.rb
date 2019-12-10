# Class Declaration
class Player
  attr_accessor :name, :lives
  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end
end

# Tests
frank = Player.new("Frank Rose")
puts frank.name
puts frank.lives