


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  while !valid_move?(board, position)
    position = gets.strip
  end
  move(board, position)
  display_board(board)
end





def valid_move?(board, position)
  if position_taken?(board,position.to_i)
    return false
  elsif position.to_i.between?(1,9)
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

def move(board, location, player="X")
  location = location.to_i - 1
  board[location] = player
end

def position_taken?(board, position)
  position -= 1
  if board[position] == "X" || board[position] == "O"
    return true
  else
   return false
  end
end


