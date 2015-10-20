#display_board method
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#position_taken method
def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    return false
  else
    return true
  end
end

#valid_move method
def valid_move?(board, position)
  if position.to_i.between?(1,9) && position_taken?(board, position.to_i-1) == false
    return true
  else
    return false
  end
end

#move method
def move(board, input, character = "X")
  position = (input.to_i) - 1
  board[position] = character
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input

  if valid_move?(board, position)
    move(board, input, character = "X")
  else
    turn(board)
  end
  display_board(board)
end

