def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board,position)
    move(board,position,"X")
    display_board(board)
  else turn(board)
  end
end

def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, input, xo = "X")
  number = input.to_i
  board[number-1] = xo
  display_board(board)
end

def position_taken?(board, position)
  if (board[position] == "") || (board[position] == " ") || (board[position] == nil)
    return false
  else return true
  end
end

def valid_move?(board, position)
  real_position = (position.to_i - 1)
  if (real_position.between?(0, 8) == true) && (position_taken?(board, real_position) == false)
    return true
  else return false
  end
end