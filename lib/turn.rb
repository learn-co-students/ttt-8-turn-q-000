def turn(board)
  puts "Please enter 1-9:"
  input = gets
  if valid_move?(board,input) == true
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2] } "
  print "------------------------------------------"
  print " #{board[3]} | #{board[4]} | #{board[5] } "
  print "------------------------------------------"
  print " #{board[6]} | #{board[7]} | #{board[8] } "
end

def valid_move?(board, input)
  if input.to_i.between?(1,9)
    if !position_taken?(board, input.to_i-1)
      true
   end
  end
end

def position_taken?(board, input)
  board[input] != " "
end

def move(board,input, char = "X")
  board[input.to_i-1] = char
  return board
end


