def turn(board)
  puts "Please enter 1-9:"

  position = gets.strip
  index = input_to_index(position)

  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end

end

def input_to_index(input)
  index = input.to_i - 1
end


def valid_move?(board, index)
  if index.between?(0,8) &! position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def display_board(board)
  row_seperator = "-" * 11
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row_seperator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row_seperator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, player = X)
  board[index] = player
end
