def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp

  turn(board) if !valid_move?(board, position)
  move(board,position)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your move method here!
def move(board, position, marker='X')
  board[position.to_i - 1] = marker.upcase
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  return false if !valid_position?(position)
  return false if position_taken?(board, position)
  return true
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  return true if board[position - 1] == "X" || board[position - 1] == "O"
  false
end

def valid_position?(position)
  return false if !position.is_a? Integer
  return true if position.between?(1,9)
  false
end