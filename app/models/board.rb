class Board
  attr_accessor :board

  def initialize
    @board = load_random_values
  end

  def load_random_values
    aboard = Array.new(100) { rand(1..150) }

    bboard = Array.new(100) { rand(1..150) }

    cboard = aboard | bboard

    num = Figaro.env.count_box_board
    count_box_from_env = num.to_i

    board = cboard.slice!(0...count_box_from_env)

      if board.include? nil
      board.compact!
      board.push(1,2,3,4,5,6,7,8,9,10).uniq!
      board.slice!(count_box_from_env..-1)
    end

    ensure_winner_value_on(board)
  end

  def ensure_winner_value_on(board)
    if board.include? 5
      return board
    else
      board[1] = 5

      board.shuffle!
      return board
    end
  end

  def raffle(number)
    @board.at(number)
  end

  # Method deserializes the object from hash counterpart.
  def self.from(hash)
    board = Board.new
    board.board = hash["board"]
    board
  end

end
