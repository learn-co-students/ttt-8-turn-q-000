def display_board (board = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts (" #{board[0]} | #{board[1]} | #{board[2]} \n ----------- \n #{board[3]} | #{board[4]} | #{board[5]} \n ------------ \n #{board[6]} | #{board[7]} | #{board[8]} ")
end


def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

def valid_move?(board, position)
  index = position.to_i - 1

  if (index > board.count - 1 || index < 0 || index == nil) || position_taken?(board, index)
    return false
  end
  return true
end

def position_taken?(board, position)

  if board[position] == "X" || board[position] == "O"
    return true
  end
  return false

end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp

  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
  else
    turn(board)
  end

end
