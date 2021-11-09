class Question
  def initialize(player)
    @num1 = rand(1...10)
    @num2 = rand(1...10)
    @sum = @num1 + @num2
    @player = player
  end

  def question_prompt
    puts "#{@player.name}: What does #{@num1} plus #{@num2} equal?"
    print '> '
    @answer = Integer($stdin.gets.chomp)
    if @answer == @sum 
      puts 'YES! You are correct.'
    else
      puts "Seriously? No!"
      @player.damage
    end
  end

end

# def question_prompt
#   new_question = Question.new;
#   new_question.prompt(@name)
#   print '> '
#   @input = $stdin.gets.chomp
# end
