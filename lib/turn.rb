def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) && position_taken?(board, index) ==false
    move(board, index, character = "X")
  else
    turn(board)
  end  
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end  

def input_to_index(input)
  (input.to_i) - 1
end

def move(board,input_to_index, character = "X")
  board[input_to_index] = character
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true 
  end  
end  

def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8)
    true
  else
    false  
  end  
end
=begin
  
rescue ask for input
get input
convert input to index
if index is valid
  make the move for index
  show the board
else
  ask for input again until you get a valid input
end 
  
=end