class Game
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
  end

  #Starts each round as long as both players have > 1 life

  def start_round(question)

    while @player1.lives > 0 && @player2.lives > 0
      current_player = @current_turn.name
      print "#{current_player}: "
      question_ans = Integer(question.ask_question)
      user_answer = Integer(gets.chomp)
      
      # Checks if question is right or wrong, if wrong, takes a life.
      
      if user_answer == question_ans
        puts 'That is correct!'
      else
        puts 'Sorry, you are wrong!'
        @current_turn.lost_life
        puts "#{@player1.name}: #{@player1.lives} VS #{@player2.name}: #{@player2.lives}"
      end

      # Checks lives, otherwise continues to next player

      if @player1.lives == 0
        puts "#{@player1.name} has #{@player1.lives}. #{@player2.name} wins!"
      elsif @player2.lives == 0
        puts "#{@player2.name} has #{@player2.lives}. #{@player1.name} wins!"
      else
        puts '---- Next Player ----'
      end

        # Turn toggling between players

      if @current_turn == @player1
        @current_turn = @player2
      else
        @current_turn = @player1
      end
    end
  end
end