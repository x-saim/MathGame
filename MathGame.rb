class MathGame
 # @@current_player = player1


  def start_game
    puts "Welcome to the Math Game"

    puts "Player 1, please input your name"
    player1 = gets.chomp

    puts "Player 2, please input your name"
    player2 = gets.chomp

    player1 = Player.new(player1,3)
    player2 = Player.new(player2,3)

    p player1
    p player2
  end

end
