def valid_move?(board,position)
  position = position.to_i - 1
  position_taken = position_taken?(board, position)
  if position > 8 || position_taken == true || position < 0
    return false
  elsif position < 9 && position_taken == false
    return true
  else
    return
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == nil || board[position] == ""
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  else 
    return
  end
end

def move(board,position,char)
  position = position.to_i - 1
  board[position] = char
  return board
end

def display_board(board)
  if board == nil
    return
  end
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  char = "X"
  position = " "
  loop do
    puts "Please enter 1-9:"
    position = gets
    break if valid_move?(board, position)
  end 
  board = move(board,position,char)
  display_board(board)
end





