class Grains

  def square(square_count)
    square_count == 1 ? 1 : 2 * square(square_count - 1)
  end

  def total
    
  end

end


# square count = 1..64
# square value = 2 * the previous square count's value

