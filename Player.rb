class Player
  attr_reader :name, :lives
    def initialize(name, lives)
      @name = name
      @lives = lives
    end

    def answer_question
      answer = gets.chomp
    end

    #setter method
    def lose_life
      @lives -= 1
    end

    def is_alive
      @lives > 0
    end
end