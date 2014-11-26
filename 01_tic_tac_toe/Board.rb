class Board
  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3) }
  end

  def print_board
    self.each {|x| puts "#{x}" }
  end

  def set_move move, player
    move = { row: move[0], col: move[1]}

    self[move[row]][move[col]] = player
  end
end
