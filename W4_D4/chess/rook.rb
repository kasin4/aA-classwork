require_relative("piece.rb")
require_relative("slideable.rb")
require 'byebug'
class Rook < Piece
    include Slideable
    #uses piece's initialization
    def symbol
        :Rook
    end
    
    protected
    def move_diffs
        # debugger
        HORIZONTAL_DIRS + VERTICAL_DIRS
    end
end