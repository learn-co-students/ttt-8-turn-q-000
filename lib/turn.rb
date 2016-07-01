def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index_position)
  if index_position >= 0 && index_position <= 8 && position_taken?(board,index_position) == false
    return true
  else
    return false
  end
end


def position_taken?(board, index_position)
  if board[index_position] == " " || board[index_position] == "" || board[index_position] == nil
    return false
  elsif board[index_position] == "X" || board[index_position] == "O"
    return true
  end
end


def input_to_index(input)
  index_position = input.to_i - 1
end


def move(board, index_position, player = "X")
  board[index_position] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  position = input_to_index(input)
  if valid_move?(board, position) == true
    move(board, position, player = "X")
    display_board(board)
  else
    turn(board)
  end
end
