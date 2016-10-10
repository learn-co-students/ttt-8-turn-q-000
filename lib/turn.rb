
require_relative 'display_board'
require_relative 'move'
require_relative 'valid_move'

def turn(board)
  is_valid = nil
  entry = nil
  until is_valid
    puts "Please enter 1-9:"
    entry = gets.strip
    is_valid = valid_move?(board, entry)
  end
  move(board, entry, "X")
  display_board(board)
end