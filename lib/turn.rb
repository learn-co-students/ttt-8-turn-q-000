def display_board(player_move)
     print " #{player_move[0]} | #{player_move[1]} | #{player_move[2]} \n-----------\n #{player_move[3]} | #{player_move[4]} | #{player_move[5]} \n-----------\n #{player_move[6]} | #{player_move[7]} | #{player_move[8]} \n"
 end

def input_to_index(input)
   input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else
    return false
end
end

def move(board, input, token="X")
  board[input] = token
  display_board(board)
end


def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.chomp)
  check = valid_move?(board, input)
  if check == false
    turn(board)
  elsif check == true
    move(board, input, token="X")

end
end
