def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(board, position)
  if position_taken?(board, position) == true
    return false
  elsif position.to_i - 1 < 0 == true || position.to_i - 1 > 8 == true
    return false
  else
    return true
  end
end

def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    return false
  else
    return true
  end
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    updated_board = move(board, input, "X")
    display_board(updated_board)
  else
    
    turn(board)
  end
end






