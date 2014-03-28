class Scrabble
  attr_reader :letters

  def self.score(word)
    new(word).score
  end

  def initialize(word)
    @score = 0
    make_individual_letters_out_of(word)
  end

  def score
    score_letters
    @score
  end

private

  def make_individual_letters_out_of(word)
    @letters = parse(word.to_s)
  end

  def parse(word)
    word.gsub(/\s+/,"").upcase.chars
  end

  def score_letters
    letters.each do |l|
      @score += letter_scores[l]
    end
  end

  def letter_scores
    {
      "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
      "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4,
      "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10
    }
  end

end
