class School

  attr_reader :db

  def initialize
    @db = Hash.new { [] }
  end

  def add(name, klass)
    db[klass] += [name]
  end

  def grade(num)
    db[num]
  end

  def sort
    Hash[db.sort].each_key { |key| db[key].sort! }
  end

end
