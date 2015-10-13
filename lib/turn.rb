def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position, character="X")
    display_board(board)
  else
    puts "Sorry that's not available. Please try again"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board_array, location, character="X")
  location = location.to_i
  location = location -= 1
  board_array[location] = character
  return board_array
end

def valid_move? (board, position)
  position = position.to_i
  if position_taken?(board, position)
    false
  elsif position.between?(1,9) == false
    false
  else
    true
  end
end


def position_taken? (board, position)
  position = ((position.to_i)-1)
  if (board[position] == " ") || (board[position] == "") || (board[position] == nil)
    return false
  else
    return true
  end
end