# frozen_string_literal: true

# MathGame - 2-Player Command Line Application
#
# A simple math game where two players take turns answering addition questions.
# Each player starts with 3 lives and loses a life for each wrong answer.
# The game continues until one of the players runs out of lives.
# The winner is determined based on the remaining lives of both players.
# The game is played through the command line interface.
#
# Usage:
# 1. Instantiate a MathGame object and call the `start_game` method to begin the game.
# 2. Players will be prompted to enter their names before the game starts.
# 3. Each turn, a random addition question is generated, and the current player must answer it correctly.
# 4. If the answer is correct, the player proceeds to the next turn. Otherwise, the player loses a life.
# 5. The game ends when one of the players loses all their lives.
# 6. The game displays the final winner and the score of the other player.
#
# Example:
# ```
# game = MathGame.new
# game.start_game
# ```

class MathGame
  # Starts the math game by prompting for player names, creating players,
  # setting the initial current player, and entering the game loop.

  def start_game
    puts 'Welcome to the Math Game!'

    puts 'Player 1, please input your name.'
    player1_name = gets.chomp

    puts 'Player 2, please input your name.'
    player2_name = gets.chomp

    # Create Player 1 & 2 with the given
    @player1 = Player.new(player1_name, 3)
    @player2 = Player.new(player2_name, 3)

    @current_player = @player1 # Set the current player to Player 1.

    game_loop
  end

  # Generates a random addition question, asks the current player for the answer,
  # checks if the answer is correct, updates player lives accordingly,
  # switches to the other player,
  # and displays the remaining lives of both players.
  def generate_question
    random_num1 = rand(1..20)
    random_num2 = rand(1..20)
    answer = random_num1 + random_num2

    puts "#{@current_player.name}: What does #{random_num1} + #{random_num2} equal to?"
    player_response = gets.chomp.to_i

    if player_response == answer
      puts "#{@current_player.name}: YES! You are correct."
    else
      puts "#{@current_player.name}: Wrong answer :("
      @current_player.lose_life
    end

    switch_players
    puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
  end

  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  # Determines the winner based on the remaining lives of both players.
  # Returns the name of the winner.
  def winner
    @player1.lives > @player2.lives ? @player1.name : @player2.name
  end

  # Runs the main game loop until one of the players runs out of lives.
  # Displays the winner at the end of the game.
  def game_loop
    while @player1.alive? && @player2.alive?
      puts '----- NEW TURN -----'
      generate_question
    end

    puts '----- Game Over! -----'
    puts "The winner is: #{winner}"
  end
end
