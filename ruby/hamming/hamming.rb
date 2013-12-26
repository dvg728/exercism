class Hamming

  def self.compute(input_1, input_2)
    split_strands(input_1, input_2)
    compare_strands
  end

private

  def self.split_strands(strand_1, strand_2)
    @strand_1 = strand_1.split('')
    @strand_2 = strand_2.split('')
  end

  def self.compare_strands
    @strand_1.zip(@strand_2).count do |string_a, string_b|
      self.substitution?(string_a, string_b)
    end
  end

  def self.substitution?(string_a, string_b)
    unless string_a == nil || string_b == nil
      string_a != string_b
    end
  end

end
