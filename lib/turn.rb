
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,location,char = "X")
  i = location.to_i - 1
  board[i] = char
end

def position_taken?(board, location)
  !(board[location] == " " || board[location] == "" || board[location] == nil)
end

def valid_move?(board, position)
 location = position.to_i - 1
  if position_taken?(board, location) == true
    false
  elsif location.between?(0,9) == false
    false
  else position_taken?(board, location) == false && location.between?(0,9) == true
    true
  end

end

#This is the code for one turn of Tic Tac Toe
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board,position,char = "X")
    display_board(board)
  else 
    turn(board)
  end
end

