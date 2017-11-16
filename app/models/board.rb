class Board
  attr_accessor :board

  def initialize
    @board = load_random_values
  end

  def load_random_values
    aboard = Array.new(6) { rand(1..10) }

    bboard = Array.new(6) { rand(1..10) }

    cboard = aboard | bboard

    board = cboard.slice!(0..5)

    if board.include? nil
      board.compact!
      board.push(1, 2, 3, 4, 5, 6, 7, 8, 9, 10).uniq!
      board.slice!(5..-1)
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
