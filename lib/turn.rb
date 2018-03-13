def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, location)
 if position_taken?(board, location) == false && location.to_i.between?(1, 9)
   return true
  else
   return false
 end
end


def position_taken?(board, location)
  if board[location.to_i-1] == " " || board[location.to_i-1] == "" || board[location.to_i-1] == nil
    return false
  else
    return true
  end
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, player = "X")
  else
    turn(board)
  end
  display_board(board)
end
