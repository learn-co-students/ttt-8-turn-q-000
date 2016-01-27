
 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
     move(board, input)
    display_board(board)
   else
     turn(board)
   end
 end

 def valid_move?(board, position)
   position_taken?(board, position) == false && (1..9).include?(position.to_i)
 end
 
 def position_taken?(board, position)
   ["X", "O"].include?(board[position.to_i - 1])
 end
 
 def move(board, position, token = 'X')
   board[position.to_i - 1] = token
   board
 end 