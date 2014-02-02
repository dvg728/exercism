class Grains

  def square(square_count)
    square_count == 1 ? 1 : 2 * square(square_count - 1)
  end

  def total
    squares = 1..64
    squares.map{|s| square(s)}.reduce(0, &:+)
  end

end
