require 'prime'

class Raindrops

  def self.convert(number)
    substitution_for(number) == "" ? number.to_s : substitution_for(number)
  end

private

  def self.substitution_for(number)
    return_string = ""

    if prime_factors(number).include?(3)
      return_string += "Pling"
    end

    if prime_factors(number).include?(5)
      return_string += "Plang"
    end

    if prime_factors(number).include?(7)
      return_string += "Plong"
    end

    return_string
  end

  def prime_factors(number)
    @prime_factors ||= Prime.prime_division(number).flatten
  end
end
