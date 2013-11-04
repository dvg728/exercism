require './four_way_map'

class Robot
  attr_reader :bearing, :x, :y, :map

  def initialize(map_input = FourWayMap)
    @map = map_input.new
  end

  def orient(new_direction)
    if map.directions.include?(new_direction)
      @bearing = new_direction
    else
      raise ArgumentError
    end
  end

  def turn_right
    orient map.send ("right_from_#{bearing}")
  end

  def turn_left
    orient map.send ("left_from_#{bearing}")
  end

  def at(x,y)
    @x = x
    @y = y
  end

  def coordinates
    [x, y]
  end

  def advance
    delta = map.send("advance_facing_#{bearing}")
    @x += delta.first
    @y += delta.last
  end

end


class Simulator < Robot
  attr_reader :robot

  def initialize
    @robot = Robot.new
  end

  def instructions(command)
    command.split('').collect do |letter|
      decode(letter)
    end
  end

  def decode(letter)
    case letter
      when "L"
        :turn_left
      when "R"
        :turn_right
      when "A"
        :advance
    end
  end

  # def place(robot, commands)
  #   x = commands[:x]
  #   y = commands[:y]
  #   @orient = commands[:direction]
  # end

  # def evaluate(robot, instruction)

  # end

end
