def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def move(board, position, character = "X")
  board[position.to_i - 1] = character
end


def valid_move?(board, position)
  position = position.to_i
  position.between?(1, 9) && !position_taken?(board, position - 1)
end

def position_taken?(board, position)
  board[position] == "X" || board[position] == "O"
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
