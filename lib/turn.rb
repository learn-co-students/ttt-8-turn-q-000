def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def move(board, input, character = "X")
  board[input.to_i - 1] = character
end

def position_taken?(board, position)
position = position.to_i
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X"
    true
  elsif board[position] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end
