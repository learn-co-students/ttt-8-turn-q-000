def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position-1) == false && position.between?(1, 9) == true
     true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, position, token = "X")
  position = position.to_i
  board[position-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    move(board, position)
    puts "Thank you!  Here is the current board."
    display_board(board)
  else
    puts "Error! Your previous response was not allowed.  Please try again."
    turn(board)
  end
end