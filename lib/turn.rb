
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
	position = position.to_i
   if position.between?(1,9) && (position_taken?(board, position-1) == false)
   	valid_move = true
   else 
   	valid_move = false
   end
 end

def position_taken?(board, position)
 	if (board[position] ==  " " || board[position] == "" || board[position] == nil)
     return false
   else 
     return true
   end
end

def move(board, position, player = "X")
  input = position
  board[position.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end


