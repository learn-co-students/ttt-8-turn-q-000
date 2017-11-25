
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  while !valid_move?(board, input) do
    puts "Invalid entry, please try again."
    input = gets.strip.to_i
  end
  move(board,input,"X")
  display_board(board)
end


def valid_move?(board, input) 
  index = input.to_i - 1
  ((index >= 0 && index <= 8) && !(position_taken?(board,index))) ? true : false
end

def position_taken?(board, index)
  (board[index]==" ") || (board[index]=="") || (board[index]==nil) ? false : true 
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end

def move(board,input,piece)
  index = input.to_i - 1
  board[index] = piece
end