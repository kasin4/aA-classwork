require_relative "board.rb"
class Piece
    attr_reader :color, :board
    attr_accessor :position

    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
        board[position] = self
    end

    def symbol
        :piece
    end

    def inspect 
        "#{color} #{symbol}"
    end

    def valid_moves
        raise "ERROR: Calling valid moves on piece class! "
    end
end