def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position) == false and position.between?(1, 9) 
    return true
  elsif position_taken?(board, position) == true
    return false
  end
end

def position_taken?(board, position)
  if board[position-1] == " " or board[position] == "" || board[position] == nil
  return false
  else
    return true
end
end

def move(board, position, token="X")
  board[position.to_i-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    move(board, position, token="X")
    display_board(board)
  else turn(board)
  end
end



