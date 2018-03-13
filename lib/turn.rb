def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  location = position.to_i - 1
  if location.between?(0, 8) && !position_taken?(board, location)
    true
  end
end

def position_taken?(board, position)
  if (board[position] == " ") || (board[position] == "") || (board[position] == nil)
    false
  elsif (board[position] == "X") || (board[position] == "O")
    true
  end
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  int = gets.chomp
  if valid_move?(board, int)
    move(board, int)
    display_board(board)
  else
    turn(board)
  end
end