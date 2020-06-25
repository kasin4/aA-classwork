require_relative("piece.rb")
require_relative("stepable.rb")

class Knight < Piece
    include Stepable
    #uses piece's initialization
    def symbol
        :Knight
    end
    protected
    def move_diffs
        [[1,2],[1,-2],[-1,2],[-1,-2],[2,1],[2,-1],[-2,1],[-2,-1]]
    end
end