
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value="X")

  index = position.to_i - 1
  board[index] = value
  
end

def valid_move?(board, position)
  index = position.to_i - 1
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    return true
  else
    return false 
  end


end# code your #valid_move? method here


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false 
  else
    return true
  end
end# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.strip
  
  ##if valid_move?(board, input) == true
     ##display_board(board)
  if valid_move?(board, input) == false
     turn(board)
   else
    move(board, input)
    display_board(board)
  end
  
end

# code your move method here!