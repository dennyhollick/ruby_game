require './question'

class Turn
  def initialize(player)
    @player = player
  end

  def play
    question = Question.new
    print "#{@player.name}, #{question.question_text}"
    answer = gets.chomp.to_i
    if question.answer_is_correct?(answer)
      puts "#{@player.name}, you are correct!"
    else
      puts "#{@player.name}, you are wrong!"
      @player.lost_life
    end
  end
end