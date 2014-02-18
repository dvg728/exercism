class Bst
  attr_reader :data, :left, :right

  def initialize(root)
    @data = root
  end

  def all
    lefties = []
    if left
      lefties = left.all
    end
    righties = []
    if right
      righties = right.all
    end
    lefties + [@data] + righties
  end

  def each(&block)
    all.each{|element| yield(element)}
  end

  def insert(number)
    if number > data
      insert_right(number)
    else
      insert_left(number)
    end
  end

  def insert_right(number)
    if right
      right.insert(number)
    else
      @right = Bst.new(number)
    end
  end

  def insert_left(number)
    if left
      left.insert(number)
    else
      @left = Bst.new(number)
    end
  end
end
