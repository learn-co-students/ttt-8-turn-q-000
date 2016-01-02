def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position.to_i)
  else
    turn(board)
  end
end


# draw the current state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# return true if the position is valid and unoccupied
def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position) == true && position.between?(1,9)
    return true
  else
    return false
  end
end


# if the position of the board is not already occupied then return true
def position_taken?(board, position)
  position -= 1
  if board[position] == "X" || board[position] == "O"
    return false
  else
    return true
  end
end

def move(board, position, token = "X")
  position -=1
  board[position] = token
  display_board(board)
end

