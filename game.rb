class Game
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def start
    puts "ARE YOU REAAADY TO RUUUUUMBLE #{@player1.name} AND #{@player2.name}"
    player_turn
  end

  def wins(player)
    puts "#{player.name} wins with a score of #{player.lives}"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
    exit(0)
  end
  
  def validate_score
    if (@player1.lives == 0)
      wins(@player2)
    elsif (@player2.lives == 0)
      wins(@player1)
    end
  end

  def show_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end


  def player_turn
    question1 = Question.new(@player1)
    question1.question_prompt
    validate_score
    question2 = Question.new(@player2)
    question2.question_prompt
    validate_score
    show_score
    puts '----- NEW TURN -----'
    player_turn
  end


end