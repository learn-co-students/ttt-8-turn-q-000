require_relative "../lib/valid_move.rb"
require_relative "../lib/display_board.rb"
require_relative "../lib/move.rb"

def turn (board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  if    valid_move?(board,user_input) == true
    move(board,user_input,value = "X")
    display_board (board)
  else
    puts "that move is not valid"
    turn (board)
  end
end