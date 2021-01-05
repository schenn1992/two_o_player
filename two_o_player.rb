class Player 
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def remove_score
    @score -= 1
  end 

end

class Question 
  
  def initialize()
    @firstNum = rand(1...21)
    @secondNum = rand(1...21)
  end

  def addition_math_question
    return "What does #{@firstNum} plus #{@secondNum} equal to?"
  end

  def addition_result
    result = @firstNum + @secondNum
    return result
  end

end

