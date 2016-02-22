require_relative"/home/nitrous/code/labs/ttt-2-board-rb-q-000/lib/board.rb"
require_relative"/home/nitrous/code/labs/ttt-4-display-board-rb-q-000/lib/display_board.rb"
require_relative"/home/nitrous/code/labs/ttt-5-move-rb-q-000/lib/move.rb"
require_relative"/home/nitrous/code/labs/ttt-7-valid-move-q-000/lib/valid_move.rb"

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position)
    puts "Wrong number. There is no such position. Input a number from 1 to 9"
    position = gets.strip
  end
  move(board, position, x_or_o="X")
  display_board(board)
end

