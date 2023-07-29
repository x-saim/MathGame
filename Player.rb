class Player
  attr_reader :name, :lives

   # Initializes a new Player object with the given name and lives.
    # @param name [String] The name of the player.
    # @param lives [Integer] The number of lives the player starts with.
    def initialize(name, lives)
      @name = name
      @lives = lives
    end


    # Asks the player for their answer to a question.
    # Waits for the player to input their answer and returns it as a string.
    #
    # @return [String] The player's answer as a string.
    def answer_question
      answer = gets.chomp
    end


    # Reduces the player's remaining lives by 1.
    def lose_life
      @lives -= 1
    end

    # Checks if the player is still alive (has remaining lives).
    # @return [Boolean] Returns true if the player has lives greater than 0, otherwise false.
    def is_alive
      @lives > 0
    end
end