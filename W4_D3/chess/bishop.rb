require_relative("piece.rb")
require_relative("slideable.rb")
require 'byebug'
class Bishop < Piece
    include Slideable
    #uses piece's initialization
    def symbol
        :Bishop
    end
    
    protected
    def move_diffs
        # debugger
        DIAGONAL_DIRS 
    end
end