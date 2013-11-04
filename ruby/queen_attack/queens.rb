class Queens
  attr_reader :white_location, :black_location

  def initialize(instructions = {white: [0, 3], black: [7, 3]})
    @white_location = instructions[:white]
    @black_location = instructions[:black]
    same_location
  end

  def same_location
    raise ArgumentError if white_location == black_location
  end

  def white
    white_location
  end

  def black
    black_location
  end

  def to_s
    board
  end

  def board
    board = Array.new(8){ Array.new(8){"O"} }
    board[white.first][white.last] = "W"
    board[black.first][black.last] = "B"

    string = board.collect do |column|
      column.join(" ")
    end.join("\n")

    puts string
    return string
  end

  def attack?
    [same_row?, same_column?, same_diagonal?].any?
  end

  def same_row?
    white.first == black.first
  end

  def same_column?
    white.last == black.last
  end

  def same_diagonal?
    white.first - white.last == black.first - black.last
  end

end
