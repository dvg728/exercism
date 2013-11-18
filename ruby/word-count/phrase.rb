class Phrase

  attr_reader :individual_words,
              :sentence

  def initialize(phrase)
    @sentence         = phrase.downcase.gsub(/\W/, ' ')
    @individual_words = sentence.split(' ')
  end

  def word_count
    word_count = individual_words.count
    create_hash_with_counted_words
  end

  def create_hash_with_counted_words
    individual_words.each_with_object(Hash.new(0)) {|word, h|
      h[word] += 1
    }
  end


end
