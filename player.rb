# frozen_string_literal: true

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
