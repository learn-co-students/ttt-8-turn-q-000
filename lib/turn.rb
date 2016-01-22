board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board (board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move? (board, position)
  position = position.to_i
  if board[position-1] ==" " && position.between?(1,9)
    return true
  else
    return false
  end
end

def move (board, position, token ="X")
  position=position.to_i
  board[position-1] = token
end

def turn (board)
  puts "Please enter 1-9:"
  number = gets
  while valid_move?(board,number) != true
    puts"Please try again"
    number = gets
    number = number.to_i
  end

  move(board,number) 
  display_board(board)
end
