require_relative "piece.rb"
require_relative "nullpiece.rb"
class Board
    attr_reader :grid
    def initialize
        @grid = Array.new(8){Array.new(8)}
        @empty_piece = NullPiece.instance
        (0..1).each do |row_idx| 
           (0..7).each do |col_idx| 
                @grid[row_idx][col_idx] = Piece.new(:black, self, [row_idx,col_idx])
           end
        end
        (2..5).each {|row_idx| @grid[row_idx].map! {|pos| pos = @empty_piece}}
        (6..7).each do |row_idx| 
            (0..7).each do |col_idx| 
                @grid[row_idx][col_idx] = Piece.new(:white, self, [row_idx,col_idx])
            end     
        end
    end

    def move_piece(start_pos, end_pos)
        raise "NO START PIECE" if self[start_pos] == @empty_piece
        self[end_pos] = self[start_pos]
        self[start_pos] = @empty_piece
        nil
    end
    
    def [](index)
        row, col = index
        @grid[row][col]
    end

    def []= (index, piece)
        row, col = index
        @grid[row][col] = piece
        nil
    end

    def valid_pos?(pos)
        pos[0] >= 0 && pos[0] <= 7 && pos[1] >= 0 && pos[1] <= 7 
    end

    private 
    attr_reader :empty_piece

end

