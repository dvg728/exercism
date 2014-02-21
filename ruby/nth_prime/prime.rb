require 'prime'

class Prime
  def nth(number)

    if number == 0
      raise ArgumentError.new
    end

    how_many_primes = 0
    starting_point = 1

    while how_many_primes < number
      starting_point = starting_point + 1

      if Prime.prime?(starting_point)
        how_many_primes = how_many_primes + 1
      end

    end
    starting_point
  end
end
