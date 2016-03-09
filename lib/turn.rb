require '../ttt-4-display-board-rb-q-000/lib/display_board.rb'
require '../ttt-5-move-rb-q-000/lib/move.rb'
require '../ttt-6-position-taken-rb-q-000/lib/position_taken.rb'
require '../ttt-7-valid-move-q-000/lib/valid_move.rb'

def turn(board)
  puts "Please enter 1-9:"

  position = gets.strip

  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  elsif valid_move?(board, position) == false
    turn(board)
  end
end