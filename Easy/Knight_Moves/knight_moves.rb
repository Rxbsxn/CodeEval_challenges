class Knight
  attr_reader :x, :y
  VECTORS = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]].freeze
  BOARD_RANGE = (1..8)

  def initialize(position)
    @x, @y = to_coordinate(position)
  end

  def possible_moves
    moves.select { |move| on_board?(move) }.map { |move| to_position(move) }
  end

  private

  def to_position(coordinates)
    (coordinates.first + 96).chr << coordinates.last.to_s
  end

  def to_coordinate(position)
    [position[0].ord - 96, position[1].to_i]
  end

  def on_board?(move)
    BOARD_RANGE.cover?(move.first) && BOARD_RANGE.cover?(move.last)
  end

  def moves
    coords = []
    VECTORS.map do |coordinates|
      coords << [x + coordinates.first, y + coordinates.last]
    end
    coords
  end
end

unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    puts Knight.new(line).possible_moves.sort.join(' ')
  end
end
