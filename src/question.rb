class Question
  attr_accessor :num1, :operator, :num2, :query, :answer, :respondant, :response, :round
  def initialize(num1, operator, num2, respondant, round)
    @num1 = num1
    @operator = operator
    @num2 = num2
    @query = num1.to_s + operator + num2.to_s
    @answer = num1 + operator.to_i + num2
    @respondant = respondant
    @round = round
  end
end

question1 = Question.new(1, "+", 3, "Frank Rose", 1)
question1.response = 3
question3 = Question.new(4, "-", 3, "Frank Rose", 3)
question3.response = 1

puts "----- Round 1 -----"
puts "question #{question1.query}"
puts "answer key #{question1.answer}"
puts "response #{question1.response}"
puts "correct? #{question1.answer == question1.response}"

puts "----- Round 3 -----"
puts "question #{question3.query}"
puts "answer key #{question3.answer}"
puts "response #{question3.response}"
puts "correct? #{question3.answer == question3.response}"