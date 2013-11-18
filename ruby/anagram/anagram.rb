class Anagram
  attr_reader :subject

  def initialize(subject)
    @subject = subject
  end

  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      valid_anagram?(possible_anagram)
    end
  end

private

  def valid_anagram?(possible_anagram)
    !same_word?(possible_anagram) && anagram_match?(possible_anagram)
  end

  def same_word?(possible_anagram)
    possible_anagram.downcase == subject.downcase
  end

  def anagram_match?(possible_anagram)
    downcase_and_sort(possible_anagram) == downcase_and_sort(subject)
  end

  def downcase_and_sort(string)
    string.downcase.chars.sort.join
  end

end
