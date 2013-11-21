class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def leap?
    if year/4 then true end
  end

end

# ```plain
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     except every year that is evenly divisible by 400.
# ```
