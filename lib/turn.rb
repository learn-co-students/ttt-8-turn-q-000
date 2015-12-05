def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
if board[position.to_i-1]=="X" || board[position.to_i-1]=="O"
  return true
else board[position.to_i-1]==" " || board[position.to_i-1]=="" || board[position.to_i-1]==nil
  return false
end
end

def valid_move?(board, position)
  if position_taken?(board, position)
    return false
  elsif (position.to_i-1).between?(0,8)
    return true
end
end

def move(board, position, current_player = "X")
  board[position.to_i-1] = current_player
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if input == (position.to_i-1).between?(0,8)
    return display_board(board, input)
    else puts "Please enter 1-9:"
end
end

