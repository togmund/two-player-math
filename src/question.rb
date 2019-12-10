# Class Declaration
class Question
  attr_accessor :num1, :operator, :num2, :query, :answer, :respondant, :response, :round

  def initialize(num1, operator, num2, respondant, round)
    @num1 = num1
    @operator = operator
    @num2 = num2
    @query = "#{num1} #{operator} #{num2}"
    @respondant = respondant
    @round = round
    case operator
      when '+'
        @answer = num1 + num2
      when '-'
        @answer = num1 - num2
      when '*'
        @answer = num1 * num2
      when '/'
        @answer = num1 / num2
      when '**'
        @answer = num1 ** num2
      when '%'
        @answer = num1 % num2
      else
        puts "whutt"
      end
    puts "Question for round #{round}"
    puts "What is #{num1} #{operator} #{num2}?" 
  end
end

# Tests
# question1 = Question.new(1, "+", 3, "Frank Rose", 1)
# question1.response = 4
# question3 = Question.new(4, "-", 3, "Boy Bear", 3)
# question3.response = 6

# puts "----- Round 1 -----"
# puts "question #{question1.query}"
# puts "answer key #{question1.answer}"
# puts "response #{question1.response}"
# puts "correct? #{question1.answer == question1.response}"

# puts "----- Round 3 -----"
# puts "question #{question3.query}"
# puts "answer key #{question3.answer}"
# puts "response #{question3.response}"
# puts "correct? #{question3.answer == question3.response}"