require_relative("piece.rb")
require_relative("slideable.rb")
require 'byebug'
class Queen < Piece
    include Slideable
    #uses piece's initialization
    def symbol
        :Queen
    end
    
    protected
    def move_diffs
        # debugger
        HORIZONTAL_DIRS + VERTICAL_DIRS + DIAGONAL_DIRS 
    end
end