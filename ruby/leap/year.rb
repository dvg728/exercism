class Year
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def leap?
    vanilla_year? && !century? || exceptional_century?
  end

private

  def vanilla_year?
    date % 4 == 0
  end

  def century?
    date % 100 == 0
  end

  def exceptional_century?
    date % 400 == 0
  end

end
