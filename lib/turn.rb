board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken?(board, input)
  pos = input.to_i
  position = pos-1

  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else return true
  end
end



def valid_move?(board, input)
  pos = input.to_i
  position = pos-1

  if position.between?(0, 8) && position_taken?(board, input) == false
    return true
  else return false
  end
end



def move(board, input, token="X")
  pos = input.to_i
  position = pos-1

  if position_taken?(board, input) == false
    board[position] = token
  end
end


def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  pos = input.to_i
  position = pos-1

  token = "X"

  if valid_move?(board, input) == true
    board[position] = token
    display_board(board)
  else turn(board)
  end
end



