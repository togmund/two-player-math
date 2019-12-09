class Question
  attr_accessor :query, :answer, :respondant, :response, :round
  def initialize(query, respondant, round)
    @query = query
    @answer = query.to_i
    @respondant = respondant
    @round = round
  end
end

question1 = Question.new("1 + 3", "Frank Rose", 1)
question1.response = 3
question3 = Question.new("4 - 3", "Frank Rose", 3)
question1.response = 1

puts "----- Round 1 -----"
puts question1.query
puts question1.answer
puts question1.response
puts question1.answer == question1.response

puts "----- Round 3 -----"
puts question3.query
puts question1.answer
puts question3.response
puts question3.answer == question3.response