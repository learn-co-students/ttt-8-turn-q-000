def display_board(board)
  
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end

def valid_move?(board, position)
  position = position.to_i 
  if position.between?(1,9) && position_taken?(board, position) 
     true
  else 
     false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position - 1] == " " || board[position - 1] == ""
     true
  else
     false
  end
end

def move(array, location, character = 'X')
    location = location.to_i - 1
    array[location] = character
end