class FrogJump

#I assume that X , Y and D are integers within the range (1..1,000,000,000) and X ≤ Y .
  def frog_jump(x, y, d)
    @number_of_jumps = 0
    @current_position = x

    while @current_position < y do
      @current_position += d
      @number_of_jumps += 1
    end

    @number_of_jumps
  end
end
