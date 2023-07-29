# frozen_string_literal: true

# Player - Represents a player in the math game.
#
# This class encapsulates player-related information and functionalities
# for the math game. Each player is initialized with a name and a specific
# number of lives. Players can lose lives, and their status (alive or not)
# can be checked through the `alive?` method.
#
# Example usage:
# ```
# player1 = Player.new("Alice", 3)
# player2 = Player.new("Bob", 3)
# player1.lose_life
# puts "#{player1.name} has #{player1.lives} lives left."
# puts "#{player2.name} is #{player2.alive? ? 'alive' : 'out of lives'}."
# ```

class Player
  attr_reader :name, :lives

  # Initializes a new Player object with the given name and lives.
  # @param name [String] The name of the player.
  # @param lives [Integer] The number of lives the player starts with.
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  # Reduces the player's remaining lives by 1.
  def lose_life
    @lives -= 1
  end

  # Checks if the player is still alive (has remaining lives).
  # @return [Boolean] Returns true if the player has lives greater than 0, otherwise false.
  def alive?
    @lives.positive?
  end
end
