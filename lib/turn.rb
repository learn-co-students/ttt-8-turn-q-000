def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")
  board[position.to_i-1]=char
  board
end

def valid_move?(board, position)
  if position.to_i < 1 or position.to_i > 9
    then false
  elsif position_taken?(board, position) == true
    then false
  elsif position_taken?(board, position) == false && (position.to_i - 1) <= board.length 
    then true
  end
end


def position_taken?(board, position)
  
  if board[position.to_i-1] == " "
    then false
  elsif board[position.to_i-1] == "" 
    then false
  elsif board[position.to_i-1] == nil
    then false
  elsif board[position.to_i-1] == "X"
    then true
  elsif board[position.to_i-1] == "O"
    then true
  end
end

def turn(board)
puts "Please enter 1-9:"

input = gets.chomp
  if valid_move?(board, input) == false
    then input = gets.chomp
  end

  move(board, input, char = "X")
  display_board(board)
end