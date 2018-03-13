
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
    position = position.to_i
  if (position.to_i.between?(1, 9) && position_taken?(board, position) == false)
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, position, token = "X")
  board[position.to_i - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true
    move(board, position, token = "X")

  else
    turn(board)
  end
  display_board(board)
end