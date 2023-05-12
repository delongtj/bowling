require_relative 'player'
require_relative 'scores'

class Game
  def initialize
    @player = Player.new
  end

  def record_roll(num_pins)
    @player.scores.add_roll(num_pins)
  end

  def total_score
    @player.scores.calculate
  end
end
