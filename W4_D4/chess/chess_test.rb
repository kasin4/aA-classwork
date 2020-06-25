require_relative "board.rb"
require_relative "queen.rb"
require_relative "nullpiece.rb"

b = Board.new
q = Queen.new(:black, b, [4,0])
#puts b.grid
print q.moves.sort

# b = Board.new
# whitepiece = Queen.new(:white, b, [0,0])
# other_white_piece = Queen.new(:white, b, [1,0])
# nullpiece = NullPiece.instance
# case nullpiece.color
# when nil 
#     puts "works"
# else
#     puts "doesn't work"
# end

# case whitepiece.color
# when other_white_piece.color
#     puts "works"
# else
#     puts "nogood"
# end
