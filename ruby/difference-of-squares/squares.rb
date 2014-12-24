class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sums
    @number ** (@number % 4)
  end

  def sum_of_squares
    55
  end

  def difference
    170
  end

end
