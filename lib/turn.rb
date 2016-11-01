def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end 

def valid_move?(board, position)
  if position.to_i.between?(1,9) && " " == board[position.to_i - 1]
    return true 
  else 
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player = "X")
  puts "Where would you like to go?"
end

def move(board, position, player = "X")
  board[position.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
  move(board, position, player = "X")
  display_board(board)
  else
    turn(board)
  end
end 
#   ask for input again until you get a valid input
# end
# show the board