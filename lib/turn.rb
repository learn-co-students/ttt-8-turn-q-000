def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

def input_to_index(input)
  input = input.to_i
  input -= 1
  return input
end

def move(board, index, value="X")
    board[index] = value
    return board
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  index = input_to_index(index)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

=begin
def whos_move(turn_number, current_player)
  if turn_number % 2 == 0
    player = "O"
    return player
  else
     = "X"
    return player
  end
  turn +=1
end
=end
