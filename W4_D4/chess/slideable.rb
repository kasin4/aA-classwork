require "byebug"

module Slideable
    HORIZONTAL_DIRS = [[0,1],[0,-1]] #[row,col] 
    VERTICAL_DIRS = [[1,0], [-1,0]]
    DIAGONAL_DIRS = [[-1,1],[1,-1],[1,1],[-1,-1]]
    
    def moves
        #return move_diffs
        possible_moves = []
        # apply to each direction (only move in one direction at a time)
        # call grow_unblocked_moves for each direction
        move_diffs.each do |direction|
            #debugger
            possible_moves.concat(grow_unblocked_moves(direction[0],direction[1]))
        end
        possible_moves
    end

    private 
    def move_diffs
        raise "Calling default move_diffs on Stepable module!"
    end

    def grow_unblocked_moves(dy, dx)
        # return an array
        # [[1,0],[2,0],[3,0],...]
        # growing 2d array
        # start from the position
    
        # take one step -> if it's occupied by same color or off board; stop
        #               -> if it's occupied by opposite color: shuffle it in ; stop
        #               -> shuffle; but keep going
        # 
        
        # position =[0,0]
        # direction = [1,0]
        # look at [0,0] + [1,0] = [1,0] -> empty
        #  [1,0] -> we are forced to keep using [1,0] as direction
        # we can't apply [0,1] to [1,0] and get to [1,1] in 1 turn
        possible_moves = []
        considered_position = [position[0] + dy, position[1] + dx]
        # || board[position[0]+dy][position[1]+dx].color == color
        unstopped = true
        while board.valid_pos?(considered_position) && unstopped
            #debugger
            case board[considered_position].color
            when self.color
                unstopped = false
            when nil # same color as Null Piece
                possible_moves << considered_position.dup
            else # there is a piece w/ opposite color
                possible_moves << considered_position.dup
                unstopped = false
            end
            considered_position[0] += dy #row 
            considered_position[1] += dx #col 
        end
        possible_moves
    end

end