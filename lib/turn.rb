def display_board(board)
  sep = "-----------"
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts sep
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts sep
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, location)
  if board[location.to_i.pred] != "X" && board[location.to_i] != "O"
    false
  else
    true
  end
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board,position)
      true
  else
      false
  end
end

def move(board, location, player = "X")
  board[location.to_i.pred] = player
  puts board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board,position)
    display_board(board)
  else
    turn(board)
  end
end
