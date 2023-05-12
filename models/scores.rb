class Scores
  def initialize
    @frames = []
    @current_frame = 0
  end

  def add_roll(num_pins)
    if @frames[@current_frame].nil?
      # First roll in frame
      @frames[@current_frame] = [num_pins]

      # Strike
      advance_frame if num_pins == 10
    else
      # Second roll in frame
      @frames[@current_frame] << num_pins

      advance_frame
    end
  end

  def calculate
    cumulative_score = 0

    @frames.each.with_index do |frame, i|
      # Anything valid beyond the tenth index is handled by lookahead logic below
      next if i > 9

      frame_score = 0

      if frame == [10]
        roll_one = 0
        roll_two = 0

        # Strike - next two rolls are the bonus
        next_frame = @frames[i + 1]

        if next_frame && next_frame.length == 2
          # Next two rolls were in one frame
          roll_one, roll_two = next_frame
        elsif next_frame && next_frame == [10]
          # Next two rolls were spread over two frames
          roll_one = next_frame[0]
          roll_two = @frames[i + 2][0] if @frames[i + 2]
        end

        frame_score = frame.sum + roll_one + roll_two
      elsif frame.sum == 10
        roll_one = 0

        # Spare - next roll is the bonus
        next_frame = @frames[i + 1]

        roll_one = next_frame[0] if next_frame

        frame_score = frame.sum + roll_one
      else
        # Neither strike nor spare
        frame_score = frame.sum
      end

      cumulative_score += frame_score
    end

    cumulative_score
  end

  private

  def advance_frame
    @current_frame = @current_frame + 1
  end
end
