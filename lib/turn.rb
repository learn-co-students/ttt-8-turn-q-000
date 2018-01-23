def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input_con = user_input.to_i 
  user_input_con -1
end

# code your #valid_move? method here
def valid_move?(board, position)
  if !(position_taken?(board, position)) && position.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board, position, char = "X")
  board[position] = char
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    return true
  elsif board[position] != " " || board[position] != ""
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  position = input_to_index(user_input)
  if valid_move?(board, position) == true 
    move(board, position, char = "X")
  else
    turn(board)
  end

  display_board(board)


end


