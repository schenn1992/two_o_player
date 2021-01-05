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

class Game 
  def initialize(playerA, playerB)
    @playerA = playerA
    @playerB = playerB
    @currentPlayer = @playerA
  end

  def player_turn 
    question = Question.new()
    puts "#{@currentPlayer.name}: #{question.addition_math_question}"
    check_answer(@currentPlayer,question)
    display_score()
    switch_player()
  end 

  def display_score
    puts "#{@playerA.name}: #{@playerA.score}/3 vs #{@playerB.name}: #{@playerB.score}/3 "
  end 

  def check_answer(player, question)
    answer = gets.chomp.to_i
    if answer == question.addition_result
      puts "#{player.name}: You are correct"
    else 
      puts "#{player.name}: Wrong Answer"
      player.remove_score
    end
    return answer
  end

  def play_game
    while @playerA.score != 0 and @playerB.score != 0
      player_turn()
    end  
    puts "Godd bye!"
  end

  def switch_player
    if @currentPlayer == @playerA
      @currentPlayer = @playerB
    else 
      @currentPlayer = @playerA
    end
  end 
end