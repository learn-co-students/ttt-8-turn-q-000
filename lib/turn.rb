def turn(board)
puts "Where would you like to move?"
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)

if valid_move?(board,index)
  move(board,index)
else until valid_move?(board,index)
  puts "Try again. Where would you like to move?"
  user_input = gets.strip
  index = input_to_index(user_input)
end
end
display_board(board)
end

def position_taken?(board, index)
if board[index] == "X" || board[index] == "O"
  return true
else return false
end
end

def valid_move?(board, index)
if index.between?(0,8) && !position_taken?(board, index)
  return true
else return false
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
user_input.to_i - 1
end

def move(board, index, value = "X")
board[index] = value
end
