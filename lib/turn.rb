board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input, character = "X")
    display_board(board)
  else
    turn(board)
  end
end


def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def valid_move?(board, position)
  array_location = position.to_i - 1
  if position_taken?(board, array_location) == true
    false
  elsif array_location.between?(0,8)
    true
  end
end

def move (board, location, character = "X")
  board[location.to_i - 1] = character
end