class Phrase

  attr_reader :split_words

  def initialize(phrase)
    @phrase      = phrase.downcase.gsub(/\W/, ' ')
    @split_words = phrase.split(' ')
  end

  def word_count
    split_words   = @phrase.split(' ')
    counted_words = split_words.count
    word_count    = {split_words[0] => counted_words}
    words         = @phrase
    @split_words  = words.split(" ")
    creating_hash
  end

  def creating_hash
    word_hash   = {}
    split_words.each do |word|
      if word_hash[word]
        word_hash[word] = word_hash[word]+1
      else
        word_hash[word] = 1
      end
    end
    return word_hash
  end


end
