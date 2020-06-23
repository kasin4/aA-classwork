require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)
    node = TicTacToeNode.new(game.board.dup, mark, nil)
    children = node.children
    children.each do |child|
      return child.prev_move_pos if child.winning_node?(mark)
      # grandchildren = child.children
      # grandchildren.each do |grandchild|
      #   return grandchild.prev_move_pos if grandchild.winning_node?(mark)
      # end
    end
    children.each do |child|
      return child.prev_move_pos if !(child.losing_node?(mark))
    end
    raise ArgumentError.new("cannot pick a winner or draw")
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Jeff")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end
