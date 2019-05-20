class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
  end

  def take_turn

  end

  def show_sequence
    @seq
  end

  def require_sequence
    gets 
  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
    puts "great round!"
  end

  def game_over_message
    puts "game over, well played"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
