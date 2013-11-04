class FourWayMap

  def directions
    [:north, :east, :south, :west]
  end

  def right_from_north
    :east
  end

  def right_from_east
    :south
  end

  def right_from_south
    :west
  end

  def right_from_west
    :north
  end

  def left_from_north
    :west
  end

  def left_from_east
    :north
  end

  def left_from_south
    :east
  end

  def left_from_west
    :south
  end

  def advance_facing_north
    [0, 1]
  end

  def advance_facing_east
    [1, 0]
  end

  def advance_facing_south
    [0, -1]
  end

  def advance_facing_west
    [-1, 0]
  end

end
