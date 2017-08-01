class Question

  def ask_question
    num1 = rand(0...20)
    num2 = rand(0...20)
    print "What does #{num1} plus #{num2} equal? "
    ans = num1 + num2
  end
end