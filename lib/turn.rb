def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
    display_board(board)
end

def move(board, position, value = "X")
  board_position = position.to_i - 1
  board[board_position] = value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  int_position = position.to_i
  taken = position_taken?(board, int_position)
   int_position.between?(1,9) == true && taken == false
end

def position_taken?(board, position)
  array_position = position - 1
  if board[array_position] == " " || board[array_position] == "" || board[array_position] == nil
    false
  elsif board[array_position] == "X" || board[array_position] == "O"
    true
  end
end
