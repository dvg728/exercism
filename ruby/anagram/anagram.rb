class Anagram
  attr_reader :subject

  def initialize(subject)
    @subject = subject
  end

  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      words?(possible_anagram)
    end
  end

  def words?(possible_anagram)
    !matched_against_words?(possible_anagram) && anagram_match?(possible_anagram)
  end

  def matched_against_words?(possible_anagram)
    possible_anagram.downcase == subject.downcase
  end

  def anagram_match?(possible_anagram)
    possible_anagram.downcase.chars.sort.join == subject.downcase.chars.sort.join
  end

end
