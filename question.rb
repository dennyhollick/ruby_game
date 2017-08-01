class Question

  def initialize
    @num1 = rand(0..20)
    @num2 = rand(0..20)
  end

  # def ask_question
  #   print "What does #{@num1} plus #{@num2} equal? "
  #   ans = num1 + num2
  # end

  def question_text
    "What does #{@num1} plus #{@num2} equal? "
  end

  def answer_is_correct?(answer)
    answer == @num1 + @num2
  end
end