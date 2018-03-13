def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, move)
  interger = move.to_i - 1
  if position_taken?(board, interger) == true
    false
  elsif position_taken?(board, interger) == false && interger.between?(0,8) == true
    true
  end
end

def position_taken? (board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move (board, location, char = "X")
  board[location.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    board[input.to_i - 1] = "X"
    display_board(board)
  else
    turn(board)
  end
end
