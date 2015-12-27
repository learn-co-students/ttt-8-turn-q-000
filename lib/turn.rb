def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else puts "That's not valid input.  Please enter 1 to 9."
    input = gets.strip
  end
end

def move(array, position, value="X")
  array[position.to_i - 1] = value
end

def valid_move?(board, position)
  position = position.to_i
  if !(position.between?(1, 9)) || position_taken?(board, position - 1)
    return false
  else
    return true
  end
end


def position_taken?(board, position)
  if board[position] == (nil) || board[position] == ("") || board[position] == (" ")
    return false
  else
    return true
  end
end



def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end
