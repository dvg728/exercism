require 'prime'

class Prime

#   def self.nth(index)
#     raise ArgumentError unless index > 0
#     primes[index]
#   end

# private

#   def self.primes
#     @primes ||= find_primes
#   end

#   def self.find_primes
#     possible_numbers = (2..10003).to_a
#     possible_numbers.each do |a|
#       possible_numbers.reject! do |b|
#         (a != b) && (b % a == 0)
#       end
#     end
#     possible_numbers.unshift(1)
#   end
# end

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
