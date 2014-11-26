class Player
  attr_reader :name
  @@player = 1

  def initialize
    @name = "Player #{@@player}"
    set_token
  end

  def make_move move board
    board.set_move move, self.token
  end

  private
  def set_token
    if @@player == 1
      @token = "X"
      @@player += 1
    else
      @token = "O"
      @@player -= 1
    end
  end
end
