


board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]

def position_taken?(board, position)
  if board[position] == "X"
    then true
  elsif board[position] == "O"
    then true
  elsif board[position] == "  " || "   " || ""
    then false
  else nil
  end
end 

def valid_move?(board, position) 
  newposition = position.to_i - 1
  if position_taken?(board, newposition) == false && newposition.between?(0,8) == true
     true
  end
end

def move(board, position, character= "X")
    newposition = position.to_i - 1
  board["#{newposition}".to_i] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  if valid_move?(board, position) == true
    move(board, position, character="X")
  else valid_move?(board, position) != true
    puts "I'm sorry, that is an invalid move."
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

