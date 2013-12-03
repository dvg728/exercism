class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def leap?
    vanilla_year? && !century? || exceptional_century?
  end

  def vanilla_year?
    year % 4 == 0
  end

  def century?
    year % 100 == 0
  end

  def exceptional_century?
    year % 400 == 0
  end

end
