class Scrabble
  attr_reader :letters
  attr_accessor :score

  def initialize(word)
    make_individual_letters_out_of(word)
    @score = 0
  end

  def make_individual_letters_out_of(word)
    if word == nil
      word = ""
    end
    valid_string = word.gsub(/[\t\n ]/, "")
    @letters = valid_string.upcase.split("")
  end

  def score
    score_letters
    @score
  end

   def self.score(word)
     new(word).score
   end

  def score_letters
    letters.each do |l|
      @score += letter_scores[l]
    end
  end

  def letter_scores
    { "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10 }
  end

end
