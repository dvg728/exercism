class Grains

  def square(square_count)
    square_count == 1 ? 1 : 2 * square(square_count - 1)
  end

  def total
    # sum of each square, 1 - 64
    # start with 0, add result of square method for each square
    squares = 1..64
    
    # sum     = 0
    # squares.each do |s|
    #   # take result and store it into sum
    #   sum += square(s)
    # end
    # sum

    # squares.inject(0) do |acc, s|
      # acc += square(s)
    # end

    squares.map{|s| square(s)}.reduce(0, &:+)

    # add = ->(a, b) {a + b}
    # squares.map{|s| square(s)}.reduce(0, &add)
    



  end

end


# square count = 1..64
# square value = 2 * the previous square count's value

