def display_board(board)
  puts   " #{board[0]} | #{board[1]} | #{board[2]} "
  puts   "-----------"
  puts   " #{board[3]} | #{board[4]} | #{board[5]} "
  puts   "-----------"
  puts   " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end

def move(array, position, character = "X")
  position = position.to_i - 1
  array[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end

