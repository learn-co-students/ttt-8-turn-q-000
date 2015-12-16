board = [ " ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
     puts " #{board[0]} | #{board[1]} | #{board[2]} "
     puts "-----------"
     puts " #{board[3]} | #{board[4]} | #{board[5]} "
     puts "-----------"
     puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  position.chomp
  if valid_move?(board, position)
    return move(board, position, character= "X") && display_board(board)  
  else return turn(board)
  end 
end

def valid_move?(board, position)
  position = position.to_i
  position.between?(1, 9) && 
  !position_taken?(board, position - 1)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
 if   board[position] == " "
 return false
elsif board[position] == ""
 return false
elsif board[position] == nil
  return false
elsif board[position] == "X" || "O"
  return true
  end
end

def move(board, position, character= "X")
  position.to_i
  board[position.to_i - 1] = character
  end

