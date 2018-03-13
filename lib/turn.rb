def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
  move(board, position)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, place, icon="X")
  place = place.to_i
  board[place - 1] = icon
  return board
end

def valid_move?(board, position)
  if (position.to_i.to_s != position)
    return false
  end
  position = position.to_i - 1
  if position_taken?(board, position) == true || position > board.length - 2
    return false
  else
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  end
  return true
end
