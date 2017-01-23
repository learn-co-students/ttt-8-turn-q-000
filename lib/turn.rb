def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, location, char = 'X')
  location = location.to_i
  board[location - 1] = char
  board
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9) && position_taken?(board, position - 1) == false
    return true
  else
    return false
  end
  
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
    turn(board)
  else
    board = move(board, position)
    display_board(board)
  end
end