def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
    true
  end
end

def position_taken?(board, position)
  board[position] != " "
end

def move(board, position, value="X")
  board[position.to_i-1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board,position)
    move(board,position.to_i)
  else 
    turn(board)
  end
  display_board(board)
end

