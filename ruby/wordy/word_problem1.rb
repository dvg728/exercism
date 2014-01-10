class WordProblem

  attr_reader :phrase, :numbers, :operators

  def initialize(problem)
    @phrase = problem.gsub('?', '').split(' ')[2..-1]
    @numbers = problem.scan(/-?\d*/).delete_if(&:empty?)
    @operators = (@phrase - @numbers).delete_if {|n| n == 'by'}
  end

  def answer
    unless @phrase.any? {|p| conversion.keys.include? p}
      raise ArgumentError
    end

    total = 0
    (numbers.size-1).times do |n|
      if numbers[n+1].nil?
        numbers[n+1] = 0
      end
      numbers[n+1] = numbers[n].to_i.send(conversion[operators[n]], numbers[n+1].to_i)
    end
    numbers.last
  end

  def conversion
    {
      'plus' => :+,
      'minus' => :-,
      'multiplied' => :*,
      'divided' => :/,
    }
  end

end
