require_relative 'scores'

class Player
  attr_accessor :scores

  def initialize
    @scores = Scores.new
  end
end
