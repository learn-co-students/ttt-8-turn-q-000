# turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  array_index = position.to_i - 1
  if array_index.between?(0,8)
    if valid_move?(board, position)
      move(board, position)
      display_board(board)
    else
      turn(board)
    end
  else
    turn(board)
  end
end

# display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid_move? method
def valid_move?(board, position)
  array_index = position.to_i - 1
  if array_index.between?(0,8)
    if !(position_taken?(board, array_index))
      true
    else
      false
    end
  else
    false
  end
end

# position_taken method
def position_taken?(board, array_index)
  if board[array_index] == " " || board[array_index] == "" || board[array_index] == nil
    false
  else
    true
  end
end

# move method
def move(board, position, character="X")
  array_index = position.to_i - 1
  board[array_index] = character
end