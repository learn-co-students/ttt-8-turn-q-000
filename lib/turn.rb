def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input -= 1
end

def valid_move?(board, index)
  if (index.between?(0, 8)) && (position_taken?(board, index) == false)
    return true
  else
    return false
  end
end


def move(board, index, token = "X")
  board[index].replace(token)
end


def position_taken?(board, index)
  board[index] != nil && board[index] != " " && board[index] != ""
end


def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  new_value = input_to_index(index)
  if valid_move?(board, new_value) == true
    move(board, new_value, "X")
    display_board(board)
  else
    turn(board)
  end

end
