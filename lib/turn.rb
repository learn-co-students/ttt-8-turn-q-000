def display_board(array)
  puts  "   #{array[0]} | #{array[1]} | #{array[2]} 
  -----------
   #{array[3]} | #{array[4]} | #{array[5]} 
  -----------
   #{array[6]} | #{array[7]} | #{array[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  valid = valid_move?(board, position)
  position = position.to_i
  position = position - 1
  if valid == true
    position += 1
    move(board, position, "X")
    display_board(board)
  else 
    puts "Invalid selection. Please try again"
    turn(board)
  end
end

def valid_move?(board, position)
  taken = position_taken?(board,position)
  position = position.to_i
  position = position - 1
  inbetween = position.between?(0,8)
  if taken == false && inbetween == true
    return true
  else 
    return false
  end
end

def position_taken?(board, position)
  position = position.to_i
  position = position - 1
  board[position] != " " && board[position] != "" && board[position] != nil
end

def move(array, position, character = "X")
  position = position - 1
  array[position] = character
end

