# display_board basic
def display_board(move =" ")
  puts " #{move[0]} | #{move[1]} | #{move[2]} "
  puts "------------"
  puts " #{move[3]} | #{move[4]} | #{move[5]} "
  puts "------------"
  puts " #{move[6]} | #{move[7]} | #{move[8]} "
end
# display_board basic ^

# #position_taken? method here
def position_taken?(board,position)
  move_integer = position.to_i
  move= move_integer - 1
  if board[move] == " "
    false
  elsif board[move] == ""
    false
  elsif board[move] == nil
    false
  else
    true
  end
end
# end of #position_taken? method ^^^

# code your #valid_move? method here
def valid_move?(board,position)
  move_integer = position.to_i
  move= move_integer - 1
  #if position is within board and not taken = valid move
  if move.between?(0,8) && position_taken?(board,position) == false
    true
  # if position is within board and taken = invalid move
  elsif move.between?(0,8) && position_taken?(board,position)
    false
  # if position is outside the board, its an invalid move
  elsif move < 0 || move > 8
    false
  end
end
# end of #valid_move? method ^^^

# code your move method here!
def move(board,position,char= "X")
  move= position.to_i - 1
  board[move] = char
end
# end of #move method ^^^

#define turn(board)
def turn(board)
  #ask for input
  puts "Please enter 1-9:"
  #get input
  position= gets.strip
  #if input is valid
  if valid_move?(board,position)
  #make the move for input
    move(board,position,char= "X")
  #else
  else
  #ask for input again until you get a valid input
  until valid_move?(board,position) == true
    puts "Please select an empty cell in range 1-9"
    position= gets.strip
  #end
  end
  #show the board
  end
display_board(board)
end