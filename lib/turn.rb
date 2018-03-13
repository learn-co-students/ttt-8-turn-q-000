def display_board(board)
  print " #{board[0]} ", "|", " #{board[1]} ", "|", " #{board[2]} \n"
  puts "-----------"
  print " #{board[3]} ", "|", " #{board[4]} ", "|", " #{board[5]} \n"
  puts "-----------"
  print " #{board[6]} ", "|", " #{board[7]} ", "|", " #{board[8]} \n"
end

def valid_move?(board, position)

  index = position.to_i - 1

  if index.between?(0,8) && (position_taken?(board, index) == false)
   return true
  else
   return false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif 
    board[position] == "X" || board[position] == "O" 
    return true
  end
end

def move(board, location, token = "X")
  position = location.to_i - 1
  update_array_at_with(board, position, token)
end

def update_array_at_with(array, position, value)
    array[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip

  if valid_move?(board, number)
    move(board, number)
    display_board(board)
  else 
    turn(board)
  end
end
   